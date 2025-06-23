from django.urls import path, include
from rest_framework.routers import DefaultRouter
from .views import (
    InvitationViewSet,
    PublicInvitationView,
    InvitationBulkViewSet
)

# Router para las rutas principales
router = DefaultRouter()
router.register(r'', InvitationViewSet, basename='invitation')
router.register(r'bulk', InvitationBulkViewSet, basename='invitation-bulk')

# Router para las rutas públicas (sin autenticación)
public_router = DefaultRouter()
public_router.register(r'public', PublicInvitationView, basename='public-invitation')

app_name = 'invitations'

urlpatterns = [
    # Rutas principales (requieren autenticación)
    path('', include(router.urls)),
    
    # Rutas públicas (sin autenticación)
    path('', include(public_router.urls)),
]

# URLs específicas adicionales
urlpatterns += [
    # Endpoints específicos para mejor organización
    path('statistics/', 
         InvitationViewSet.as_view({'get': 'statistics'}), 
         name='invitation-statistics'),
    
    path('by-event/', 
         InvitationViewSet.as_view({'get': 'by_event'}), 
         name='invitations-by-event'),
    
    # Bulk operations
    path('bulk/create/', 
         InvitationBulkViewSet.as_view({'post': 'bulk_create'}), 
         name='bulk-create-invitations'),
    
    path('bulk/send/', 
         InvitationBulkViewSet.as_view({'post': 'bulk_send'}), 
         name='bulk-send-invitations'),
    
    # Public endpoints (sin autenticación)
    path('../invitation/view/<str:token>/', 
         PublicInvitationView.as_view({'get': 'view_invitation'}), 
         name='public-view-invitation'),
    
    path('../invitation/confirm/<str:token>/', 
         PublicInvitationView.as_view({'post': 'confirm_invitation'}), 
         name='public-confirm-invitation'),
    
    path('../invitation/reject/<str:token>/', 
         PublicInvitationView.as_view({'post': 'reject_invitation'}), 
         name='public-reject-invitation'),
]