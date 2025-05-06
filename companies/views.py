# /companies/views
from rest_framework import viewsets, permissions
from rest_framework.exceptions import PermissionDenied
from .models import Company
from .serializers import CompanySerializer, CompanyCreateWithAdminSerializer
from audit.mixins import AuditModelMixin

class IsSuperAdmin(permissions.BasePermission):
    def has_permission(self, request, view):
        return request.user.is_authenticated and request.user.is_superadmin()

class CompanyViewSet(AuditModelMixin,viewsets.ModelViewSet):
    queryset = Company.objects.all()
    permission_classes = [IsSuperAdmin]

    def get_serializer_class(self):
        if self.action == 'create':  # ← más preciso que self.request.method
            return CompanyCreateWithAdminSerializer
        return CompanySerializer

    def perform_create(self, serializer):
        user = self.request.user
        if not user.is_superadmin():
            raise PermissionDenied("Solo el superadmin puede crear compañías.")
        # super().perform_create(serializer)
        serializer.save()
