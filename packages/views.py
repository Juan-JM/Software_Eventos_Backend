#packages/views.py
from rest_framework import viewsets, permissions
from .models import Package
from .serializers import PackageSerializer
from audit.mixins import AuditModelMixin
from rest_framework.permissions import IsAuthenticatedOrReadOnly

class IsAdminOrStaff(permissions.BasePermission):
    def has_permission(self, request, view):
        return request.user.is_authenticated and (request.user.user_type in ['admin', 'staff'])

class PackageViewSet(AuditModelMixin,viewsets.ModelViewSet):
    queryset = Package.objects.all()
    serializer_class = PackageSerializer
    permission_classes = [IsAdminOrStaff]

    def get_queryset(self):
        user = self.request.user
        if user.is_superadmin():
            return Package.objects.all()
        return Package.objects.filter(company=user.company)

    def perform_create(self, serializer):
        serializer.save(company=self.request.user.company)
        # super().perform_create(serializer)

