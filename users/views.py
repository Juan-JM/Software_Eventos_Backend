# backend/users/views.py
from rest_framework import viewsets, permissions, status
from rest_framework.response import Response
from rest_framework.decorators import action
from django.contrib.auth import get_user_model
from .serializers import UserSerializer, UserCreateSerializer
from audit.models import AuditLog  # Importar el modelo AuditLog

User = get_user_model()

class IsAdminOrSelf(permissions.BasePermission):
    def has_object_permission(self, request, view, obj):
        return obj == request.user or request.user.is_admin()

class UserViewSet(viewsets.ModelViewSet):
    queryset = User.objects.all()
    serializer_class = UserSerializer
    
    def get_permissions(self):
        if self.action == 'create':
            return [permissions.AllowAny()]
        elif self.action in ['update', 'partial_update', 'destroy', 'retrieve', 'me']:
            return [IsAdminOrSelf()]
        return [permissions.IsAdminUser()]
    
    def get_serializer_class(self):
        if self.action == 'create':
            return UserCreateSerializer
        return UserSerializer
    
    def perform_create(self, serializer):
        """Sobrescribe el método para registrar la creación en la bitácora"""
        user = serializer.save()
        # Registrar en la bitácora
        AuditLog.objects.create(
            user=self.request.user if self.request.user.is_authenticated else None,
            action='CREATE',
            model='User',
            object_id=str(user.id),
            detail=f"Usuario '{user.username}' creado",
            ip_address=self.request.META.get('REMOTE_ADDR')
        )
    
    def perform_update(self, serializer):
        """Sobrescribe el método para registrar la actualización en la bitácora"""
        original_user = self.get_object()
        # Obtener datos originales para registro de cambios
        original_data = {
            'username': original_user.username,
            'email': original_user.email,
            'user_type': original_user.user_type,
            'is_active': original_user.is_active
        }
        
        user = serializer.save()
        
        # Detectar qué campos cambiaron
        changes = []
        if original_data['username'] != user.username:
            changes.append(f"username: {original_data['username']} → {user.username}")
        if original_data['email'] != user.email:
            changes.append(f"email: {original_data['email']} → {user.email}")
        if original_data['user_type'] != user.user_type:
            changes.append(f"tipo: {original_data['user_type']} → {user.user_type}")
        if original_data['is_active'] != user.is_active:
            changes.append(f"activo: {original_data['is_active']} → {user.is_active}")
        
        # Registrar en la bitácora
        AuditLog.objects.create(
            user=self.request.user,
            action='UPDATE',
            model='User',
            object_id=str(user.id),
            detail=f"Usuario '{user.username}' actualizado. Cambios: {', '.join(changes)}",
            ip_address=self.request.META.get('REMOTE_ADDR')
        )
    
    def perform_destroy(self, instance):
        """Sobrescribe el método para registrar la eliminación en la bitácora"""
        user_id = instance.id
        username = instance.username
        
        # Registrar en la bitácora antes de eliminar
        AuditLog.objects.create(
            user=self.request.user,
            action='DELETE',
            model='User',
            object_id=str(user_id),
            detail=f"Usuario '{username}' eliminado",
            ip_address=self.request.META.get('REMOTE_ADDR')
        )
        
        # Proceder con la eliminación
        instance.delete()
    
    @action(detail=False, methods=['GET'])
    def me(self, request):
        """Endpoint para obtener el usuario actual"""
        serializer = self.get_serializer(request.user)
        return Response(serializer.data)