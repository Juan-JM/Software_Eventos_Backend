# subscriptions/middleware.py
from django.utils import timezone
from django.urls import resolve
from django.http import JsonResponse

class SubscriptionRequiredMiddleware:
    def __init__(self, get_response):
        self.get_response = get_response
        # URLs que no requieren verificación de suscripción
        self.exempt_urls = [
            '/api/token/',
            '/api/token/refresh/',
            '/api/subscriptions/',
            '/api/subscriptions/current/',
            '/api/subscriptions/create_checkout_session/',
            '/api/subscriptions/webhook/',
            '/admin/',
        ]
    
    def __call__(self, request):
        # Verificar si la URL actual requiere verificación
        path = request.path_info
        
        # Si la URL está en la lista de exentas, continuar
        if any(path.startswith(url) for url in self.exempt_urls):
            return self.get_response(request)
        
        # Si no es una petición a la API, continuar
        if not path.startswith('/api/'):
            return self.get_response(request)
        
        # Verificar usuario autenticado
        if not request.user.is_authenticated:
            return self.get_response(request)
        
        # Los superadmin pueden acceder a todo
        if request.user.is_superadmin():
            return self.get_response(request)
        
        # Si el usuario no tiene compañía, denegar acceso
        if not request.user.company:
            return JsonResponse({
                'error': 'Usuario no asociado a una compañía.'
            }, status=403)
        
        # Verificar si la compañía tiene suscripción activa
        from .models import Subscription
        has_active_subscription = Subscription.objects.filter(
            company=request.user.company,
            status='active',
            end_date__gt=timezone.now()
        ).exists()
        
        if not has_active_subscription:
            return JsonResponse({
                'error': 'Suscripción requerida para acceder a esta funcionalidad.',
                'subscription_required': True
            }, status=403)
        
        return self.get_response(request)
