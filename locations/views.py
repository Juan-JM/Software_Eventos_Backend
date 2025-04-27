# locations/views.py
from rest_framework import viewsets, permissions
from .models import Location
from .serializers import LocationSerializer
from audit.mixins import AuditModelMixin

class IsAdminOrStaff(permissions.BasePermission):
    def has_permission(self, request, view):
        return request.user.is_authenticated and (request.user.user_type == 'admin' or request.user.user_type == 'staff')

class LocationViewSet(AuditModelMixin, viewsets.ModelViewSet):
    queryset = Location.objects.all()
    serializer_class = LocationSerializer
    permission_classes = [IsAdminOrStaff]
    # Por defecto usará 'name' como campo identificador y el nombre del modelo es detectado automáticamente