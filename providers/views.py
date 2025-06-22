# backend/providers/views.py
from rest_framework import viewsets, permissions, status
from rest_framework.response import Response
from rest_framework.decorators import action
from django.db.models import Q
from .models import Provider
from .serializers import (
    ProviderSerializer, 
    ProviderCreateUpdateSerializer, 
    ProviderListSerializer
)
from audit.models import AuditLog
from audit.mixins import AuditModelMixin
from rest_framework.permissions import BasePermission

class IsAdminOrStaff(BasePermission):
    """Permiso para admin y staff de la empresa"""
    def has_permission(self, request, view):
        return request.user.is_authenticated and (
            request.user.is_superadmin() or 
            request.user.is_company_admin() or 
            request.user.is_staff_member()
        )

class ProviderViewSet(AuditModelMixin, viewsets.ModelViewSet):
    serializer_class = ProviderSerializer
    permission_classes = [IsAdminOrStaff]

    def get_queryset(self):
        """Filtrar proveedores por empresa del usuario"""
        user = self.request.user
        if user.is_superadmin():
            return Provider.objects.all()
        return Provider.objects.filter(company=user.company)

    def get_serializer_class(self):
        """Usar diferentes serializers según la acción"""
        if self.action == 'list':
            return ProviderListSerializer
        elif self.action in ['create', 'update', 'partial_update']:
            return ProviderCreateUpdateSerializer
        return ProviderSerializer

    def perform_create(self, serializer):
        """Sobrescribir para auditoría"""
        provider = serializer.save()
        
        # Registrar en la bitácora
        AuditLog.objects.create(
            user=self.request.user,
            action='CREATE',
            model='Provider',
            object_id=str(provider.id),
            detail=f"Proveedor '{provider.commercial_name}' creado",
            ip_address=self.request.META.get('REMOTE_ADDR')
        )

    def perform_update(self, serializer):
        """Sobrescribir para auditoría"""
        original_provider = self.get_object()
        original_data = {
            'commercial_name': original_provider.commercial_name,
            'contact_name': original_provider.contact_name,
            'email': original_provider.email,
            'is_active': original_provider.is_active
        }
        
        provider = serializer.save()
        
        # Detectar cambios
        changes = []
        if original_data['commercial_name'] != provider.commercial_name:
            changes.append(f"nombre comercial: {original_data['commercial_name']} → {provider.commercial_name}")
        if original_data['contact_name'] != provider.contact_name:
            changes.append(f"contacto: {original_data['contact_name']} → {provider.contact_name}")
        if original_data['email'] != provider.email:
            changes.append(f"email: {original_data['email']} → {provider.email}")
        if original_data['is_active'] != provider.is_active:
            changes.append(f"activo: {original_data['is_active']} → {provider.is_active}")
        
        # Registrar en la bitácora
        AuditLog.objects.create(
            user=self.request.user,
            action='UPDATE',
            model='Provider',
            object_id=str(provider.id),
            detail=f"Proveedor '{provider.commercial_name}' actualizado. Cambios: {', '.join(changes)}",
            ip_address=self.request.META.get('REMOTE_ADDR')
        )

    def perform_destroy(self, instance):
        """Sobrescribir para auditoría"""
        provider_id = instance.id
        commercial_name = instance.commercial_name
        
        # Registrar en la bitácora antes de eliminar
        AuditLog.objects.create(
            user=self.request.user,
            action='DELETE',
            model='Provider',
            object_id=str(provider_id),
            detail=f"Proveedor '{commercial_name}' eliminado",
            ip_address=self.request.META.get('REMOTE_ADDR')
        )
        
        instance.delete()

    @action(detail=False, methods=['GET'])
    def search(self, request):
        """Endpoint para búsqueda de proveedores"""
        query = request.query_params.get('q', '')
        if not query:
            return Response({'results': []})

        queryset = self.get_queryset().filter(
            Q(commercial_name__icontains=query) |
            Q(contact_name__icontains=query) |
            Q(email__icontains=query)
        )
        
        serializer = ProviderListSerializer(queryset[:10], many=True)
        return Response({'results': serializer.data})

    @action(detail=False, methods=['GET'])
    def active(self, request):
        """Endpoint para obtener solo proveedores activos"""
        queryset = self.get_queryset().filter(is_active=True)
        serializer = ProviderListSerializer(queryset, many=True)
        return Response(serializer.data)