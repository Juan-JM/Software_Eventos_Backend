# subscriptions/urls.py
from django.urls import path, include
from rest_framework.routers import DefaultRouter
from .views import SubscriptionViewSet, StripeWebhookView
from . import views

router = DefaultRouter()
router.register('', SubscriptionViewSet, basename='subscriptions')

urlpatterns = [
    # Rutas existentes
    path('', views.SubscriptionViewSet.as_view({'get': 'list'}), name='subscription-list'),
    path('current/', views.SubscriptionViewSet.as_view({'get': 'current'}), name='current-subscription'),
    path('create_checkout_session/', views.SubscriptionViewSet.as_view({'post': 'create_checkout_session'}), name='create-checkout-session'),
    
    # Ruta del webhook - asegúrate de que coincida con la configurada en Stripe
    path('webhook/', views.StripeWebhookView.as_view(), name='stripe-webhook'),
]
# urlpatterns = [
#     path('', include(router.urls)),
#     path('webhook/', StripeWebhookView.as_view(), name='stripe-webhook'),
# ]