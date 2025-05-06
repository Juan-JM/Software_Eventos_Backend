# subscriptions/views.py
import stripe
from django.conf import settings
from django.http import HttpResponse
from django.utils import timezone
from rest_framework import viewsets, permissions, status
from rest_framework.decorators import action
from rest_framework.response import Response
from rest_framework.views import APIView

from .models import Subscription
from .serializers import SubscriptionSerializer, CreateCheckoutSessionSerializer
from companies.models import Company
from audit.mixins import AuditModelMixin

# Configurar Stripe con la clave secreta
stripe.api_key = settings.STRIPE_SECRET_KEY

# Precios de los planes en Stripe (debes crear estos productos en tu dashboard de Stripe)
STRIPE_PRICE_IDS = {
    'monthly': 'price_1RLDXpA3VhVRZlE95gXJM08J',  # Reemplazar con tu ID real
    'biannual': 'price_1RLDYPA3VhVRZlE98RpTtIDM',  # Reemplazar con tu ID real
    'annual': 'price_1RLDYsA3VhVRZlE9ZyQeeYhE',  # Reemplazar con tu ID real
}

class IsCompanyAdmin(permissions.BasePermission):
    """Permiso para verificar que el usuario es administrador de una empresa."""
    def has_permission(self, request, view):
        return request.user.is_authenticated and request.user.is_company_admin()

class SubscriptionViewSet(AuditModelMixin, viewsets.ModelViewSet):
    serializer_class = SubscriptionSerializer
    permission_classes = [IsCompanyAdmin]
    
    def get_queryset(self):
        """Solo mostrar suscripciones de la compañía del usuario."""
        user = self.request.user
        if user.is_superadmin():
            return Subscription.objects.all()
        elif user.is_company_admin() and user.company:
            return Subscription.objects.filter(company=user.company)
        return Subscription.objects.none()
    
    @action(detail=False, methods=['GET'])
    def current(self, request):
        """Obtener la suscripción actual de la compañía del usuario."""
        user = request.user
        if not user.company:
            return Response(
                {"error": "Usuario no asociado a ninguna compañía."},
                status=status.HTTP_400_BAD_REQUEST
            )
        
        subscription = Subscription.objects.filter(
            company=user.company, 
            status='active',
            end_date__gt=timezone.now()
        ).first()
        
        if not subscription:
            return Response(
                {"active": False, "message": "No hay suscripción activa."},
                status=status.HTTP_200_OK
            )
        
        serializer = self.get_serializer(subscription)
        data = serializer.data
        data['active'] = True
        
        return Response(data)
    
    @action(detail=False, methods=['POST'])
    def create_checkout_session(self, request):
        """Crear una sesión de checkout con Stripe."""
        serializer = CreateCheckoutSessionSerializer(data=request.data)
        if not serializer.is_valid():
            return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
        
        user = request.user
        if not user.company:
            return Response(
                {"error": "Usuario no asociado a ninguna compañía."},
                status=status.HTTP_400_BAD_REQUEST
            )
        
        plan_type = serializer.validated_data['plan_type']
        success_url = serializer.validated_data['success_url']
        cancel_url = serializer.validated_data['cancel_url']
        
        # Crear o recuperar cliente de Stripe
        stripe_customer = None
        existing_sub = Subscription.objects.filter(
            company=user.company, 
            stripe_customer_id__isnull=False
        ).first()
        
        if existing_sub and existing_sub.stripe_customer_id:
            stripe_customer_id = existing_sub.stripe_customer_id
        else:
            # Crear un nuevo cliente en Stripe
            customer = stripe.Customer.create(
                email=user.email,
                name=f"{user.first_name} {user.last_name}",
                metadata={
                    'company_id': user.company.id,
                    'company_name': user.company.name
                }
            )
            stripe_customer_id = customer.id
        
        # Crear la sesión de checkout
        try:
            checkout_session = stripe.checkout.Session.create(
                customer=stripe_customer_id,
                payment_method_types=['card'],
                line_items=[{
                    'price': STRIPE_PRICE_IDS[plan_type],
                    'quantity': 1,
                }],
                mode='subscription',
                success_url=success_url,
                cancel_url=cancel_url,
                metadata={
                    'company_id': user.company.id,
                    'plan_type': plan_type,
                    'user_id': user.id
                }
            )
            
            return Response({'checkout_url': checkout_session.url})
            
        except Exception as e:
            return Response(
                {'error': str(e)},
                status=status.HTTP_400_BAD_REQUEST
            )


class StripeWebhookView(APIView):
    permission_classes = []  # No requiere autenticación
    
    def post(self, request, format=None):
        payload = request.body
        sig_header = request.META.get('HTTP_STRIPE_SIGNATURE')
        
        try:
            event = stripe.Webhook.construct_event(
                payload, sig_header, settings.STRIPE_WEBHOOK_SECRET
            )
        except ValueError:
            return HttpResponse(status=400)
        except stripe.error.SignatureVerificationError:
            return HttpResponse(status=400)
        
        # Manejar eventos específicos de Stripe
        if event['type'] == 'checkout.session.completed':
            session = event['data']['object']
            
            # Extraer metadatos
            company_id = session.get('metadata', {}).get('company_id')
            plan_type = session.get('metadata', {}).get('plan_type')
            
            if company_id and plan_type:
                try:
                    company = Company.objects.get(id=company_id)
                    
                    # Obtener ID de suscripción de Stripe
                    stripe_subscription_id = session.get('subscription')
                    
                    if stripe_subscription_id:
                        # Calcular fechas (como no obtenemos datos de Stripe, calculamos manualmente)
                        start_date = timezone.now()
                        
                        # Calcular end_date basado en el plan_type
                        if plan_type == 'monthly':
                            end_date = start_date + timezone.timedelta(days=30)
                        elif plan_type == 'biannual':
                            end_date = start_date + timezone.timedelta(days=180)
                        elif plan_type == 'annual':
                            end_date = start_date + timezone.timedelta(days=365)
                        else:
                            # Por defecto, un mes
                            end_date = start_date + timezone.timedelta(days=30)
                        
                        # Crear o actualizar la suscripción
                        subscription = Subscription.objects.create(
                            company=company,
                            plan_type=plan_type,
                            status='active',
                            stripe_customer_id=session.get('customer'),
                            stripe_subscription_id=stripe_subscription_id,
                            start_date=start_date,
                            end_date=end_date
                        )
                        
                        print(f"✅ Suscripción creada correctamente: {subscription.id}")
                    else:
                        print("⚠️ No se encontró ID de suscripción en la sesión de checkout")
                    
                except Company.DoesNotExist:
                    print(f"❌ Empresa con ID {company_id} no encontrada")
                except Exception as e:
                    print(f"❌ Error al procesar suscripción: {str(e)}")
        
        elif event['type'] == 'invoice.payment_failed':
            # Manejar pago fallido
            invoice = event['data']['object']
            stripe_subscription_id = invoice.get('subscription')
            
            if stripe_subscription_id:
                try:
                    subscription = Subscription.objects.get(
                        stripe_subscription_id=stripe_subscription_id
                    )
                    subscription.status = 'past_due'
                    subscription.save()
                except Subscription.DoesNotExist:
                    pass
        
        elif event['type'] == 'customer.subscription.deleted':
            # Manejar cancelación
            stripe_sub = event['data']['object']
            stripe_subscription_id = stripe_sub.get('id')
            
            if stripe_subscription_id:
                try:
                    subscription = Subscription.objects.get(
                        stripe_subscription_id=stripe_subscription_id
                    )
                    subscription.status = 'canceled'
                    subscription.save()
                except Subscription.DoesNotExist:
                    pass
        
        return HttpResponse(status=200)