# backend/staff/views.py
from rest_framework import viewsets, permissions, status
from rest_framework.response import Response
from rest_framework.decorators import action
from rest_framework.permissions import BasePermission
from rest_framework import serializers
from django.db.models import Q
from .models import Staff
from .serializers import StaffSerializer, StaffListSerializer

class IsAdminOrStaff(BasePermission):
    """Permiso para admin y staff de la empresa"""
    def has_permission(self, request, view):
        return request.user.is_authenticated and (
            request.user.user_type in ['admin', 'staff', 'superadmin']
        )

class IsAdminOnly(BasePermission):
    """Permiso solo para admins"""
    def has_permission(self, request, view):
        return request.user.is_authenticated and (
            request.user.user_type in ['admin', 'superadmin']
        )

class StaffViewSet(viewsets.ModelViewSet):
    queryset = Staff.objects.all()
    serializer_class = StaffSerializer

    def get_queryset(self):
        """Filtrar personal por empresa del usuario"""
        user = self.request.user
        if user.is_superadmin():
            return Staff.objects.all()
        return Staff.objects.filter(company=user.company)

    def get_permissions(self):
        """Permisos según la acción"""
        if self.action in ['create', 'update', 'partial_update', 'destroy']:
            # Solo admins pueden crear, editar y eliminar
            return [IsAdminOnly()]
        else:
            # Staff y admins pueden ver
            return [IsAdminOrStaff()]

    def get_serializer_class(self):
        """Usar serializer apropiado según la acción"""
        if self.action == 'list':
            return StaffListSerializer
        return StaffSerializer

    def get_serializer_context(self):
        """Agregar request al contexto"""
        context = super().get_serializer_context()
        context['request'] = self.request
        return context

    def perform_create(self, serializer):
        """Asignar empresa al crear personal"""
        user = self.request.user
        
        # Verificar que el usuario tenga una empresa asignada
        if not user.company:
            raise serializers.ValidationError("El usuario debe tener una empresa asignada")
        
        if user.is_superadmin():
            # Si es superadmin, usar su empresa por defecto
            company = user.company
        else:
            # Si es admin, usar su empresa
            company = user.company
        
        serializer.save(company=company)

    @action(detail=False, methods=['get'])
    def search(self, request):
        """Buscar personal por nombre, documento o email"""
        query = request.query_params.get('q', '')
        if not query:
            return Response([])

        queryset = self.get_queryset().filter(
            Q(full_name__icontains=query) |
            Q(identity_document__icontains=query) |
            Q(email__icontains=query)
        )

        serializer = StaffListSerializer(queryset, many=True)
        return Response(serializer.data)

    @action(detail=False, methods=['get'])
    def by_position(self, request):
        """Filtrar personal por puesto"""
        position = request.query_params.get('position', '')
        if not position:
            return Response([])

        queryset = self.get_queryset().filter(position=position)
        serializer = StaffListSerializer(queryset, many=True)
        return Response(serializer.data)

    @action(detail=False, methods=['get'])
    def active(self, request):
        """Obtener solo personal activo"""
        queryset = self.get_queryset().filter(is_active=True)
        serializer = StaffListSerializer(queryset, many=True)
        return Response(serializer.data)