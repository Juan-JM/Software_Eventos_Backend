from django.shortcuts import render
from rest_framework import viewsets, permissions
from .models import NotaVenta
from .serializers import NotaVentaSerializer
from audit.mixins import AuditModelMixin
from users.models import User

# Create your views here.
class IsAdminEmpresa(permissions.BasePermission):
    def has_permission(self, request, view):
        return request.user.is_authenticated and request.user.user_type == 'admin'

class NotaVentaViewSet(AuditModelMixin, viewsets.ModelViewSet):
    queryset = NotaVenta.objects.all().order_by('-fecha')
    serializer_class = NotaVentaSerializer
    permission_classes = [IsAdminEmpresa]

    def get_queryset(self):
        # Admin solo ve sus propias ventas
        return NotaVenta.objects.filter(administrador=self.request.user)

    def perform_create(self, serializer):
        serializer.save(administrador=self.request.user)