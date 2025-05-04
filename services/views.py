from rest_framework import viewsets, permissions
from .models import Service
from .serializers import ServiceSerializer
from audit.mixins import AuditModelMixin

class IsAdminOrStaff(permissions.BasePermission):
    def has_permission(self, request, view):
        return request.user.is_authenticated and (request.user.user_type == 'admin' or request.user.user_type == 'staff')

class ServiceViewSet(AuditModelMixin, viewsets.ModelViewSet):
    serializer_class = ServiceSerializer
    permission_classes = [IsAdminOrStaff]

    def get_queryset(self):
        user = self.request.user
        if user.is_superadmin():
            return Service.objects.all()
        return Service.objects.filter(company=user.company)

    def perform_create(self, serializer):
        serializer.save(company=self.request.user.company)
