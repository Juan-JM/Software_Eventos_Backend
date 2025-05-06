# subscriptions/permissions.py
from rest_framework import permissions
from django.utils import timezone

class HasActiveSubscription(permissions.BasePermission):
    """
    Permiso que verifica si la compañía del usuario tiene una suscripción activa.
    """
    message = "Su empresa no tiene una suscripción activa."
    
    def has_permission(self, request, view):
        # Los superadmins siempre tienen acceso
        if request.user.is_superadmin():
            return True
        
        # Si el usuario no tiene compañía, denegar acceso
        if not request.user.company:
            return False
        
        # Verificar suscripción activa
        from .models import Subscription
        return Subscription.objects.filter(
            company=request.user.company,
            status='active',
            end_date__gt=timezone.now()
        ).exists()
