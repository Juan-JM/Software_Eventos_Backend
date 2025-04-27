# services/views.py
from rest_framework import viewsets, permissions
from .models import Service
from .serializers import ServiceSerializer
from audit.mixins import AuditModelMixin

class IsAdminOrStaff(permissions.BasePermission):
    def has_permission(self, request, view):
        return request.user.is_authenticated and (request.user.user_type == 'admin' or request.user.user_type == 'staff')

class ServiceViewSet(AuditModelMixin, viewsets.ModelViewSet):
    queryset = Service.objects.all()
    serializer_class = ServiceSerializer
    permission_classes = [IsAdminOrStaff]
    # Por defecto usará 'name' como campo identificador y el nombre del modelo es detectado automáticamente