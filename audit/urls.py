# backend/audit/urls.py
from django.urls import path, include
from rest_framework.routers import DefaultRouter
# from .views import LogEntryViewSet, AuditLogViewSet  # Elimina AuditLogViewSet si no creaste el modelo personalizado
from .views import  AuditLogViewSet  # Elimina AuditLogViewSet si no creaste el modelo personalizado

router = DefaultRouter()
# router.register('logs', LogEntryViewSet, basename='logs')
# Si creaste el modelo personalizado:
router.register('', AuditLogViewSet, basename='audit')

urlpatterns = [
    path('', include(router.urls)),
]