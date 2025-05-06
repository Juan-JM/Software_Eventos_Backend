from rest_framework import viewsets, permissions
from .models import Location
from .serializers import LocationSerializer
from audit.mixins import AuditModelMixin

class IsAdminOrStaff(permissions.BasePermission):
    def has_permission(self, request, view):
        return request.user.is_authenticated and (request.user.user_type == 'admin' or request.user.user_type == 'staff')

class LocationViewSet(AuditModelMixin, viewsets.ModelViewSet):
    serializer_class = LocationSerializer
    permission_classes = [IsAdminOrStaff]

    def get_queryset(self):
        user = self.request.user
        if user.is_superadmin():
            return Location.objects.all()
        return Location.objects.filter(company=user.company)

    def perform_create(self, serializer):
        serializer.save(company=self.request.user.company)
        super().perform_create(serializer)

