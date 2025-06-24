"""
Event views for the API.
"""
from rest_framework import viewsets, permissions
from rest_framework.permissions import IsAuthenticatedOrReadOnly

from .models import Event
from .serializers import EventSerializer
from audit.mixins import AuditModelMixin


class IsAdminOrStaff(permissions.BasePermission):
    """
    Custom permission to only allow admin, staff, or customer users.
    """
    
    def has_permission(self, request, view):
        return (
            request.user.is_authenticated and 
            request.user.user_type in ['admin', 'staff', 'customer']
        )


class EventViewSet(AuditModelMixin, viewsets.ModelViewSet):
    """
    ViewSet for managing Event objects.
    Provides CRUD operations with role-based access control.
    """
    
    queryset = Event.objects.all()
    serializer_class = EventSerializer
    permission_classes = [IsAdminOrStaff]

    def get_queryset(self):
        user = self.request.user
        # Superadmin can see all events
        if user.is_superadmin():
            return Event.objects.all()
        
        # Customer users can only see events they own
        if user.user_type == 'customer':
            return Event.objects.filter(owner=user)
        
        # Admin/staff users can see events from their company
        return Event.objects.filter(company=user.company)

    def perform_create(self, serializer):
        """
        Save the event with the user's company automatically assigned.
        
        Args:
            serializer: The event serializer instance
        """
        serializer.save(company=self.request.user.company)
        # Note: Commented out super().perform_create(serializer) as it's redundant
        # since serializer.save() already handles the creation