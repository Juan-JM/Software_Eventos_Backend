from rest_framework import viewsets
from .models import Event
from .serializers import EventSerializer
from rest_framework.permissions import IsAuthenticatedOrReadOnly
from audit.mixins import AuditModelMixin

class EventViewSet(AuditModelMixin,viewsets.ModelViewSet):
    queryset = Event.objects.all()
    serializer_class = EventSerializer
    permission_classes = [IsAuthenticatedOrReadOnly]
