# schedules/views.py
from rest_framework import viewsets, permissions, status
from rest_framework.decorators import action
from rest_framework.response import Response
from django.shortcuts import get_object_or_404
from .models import Schedule, Activity
from .serializers import (
    ScheduleSerializer, ScheduleCreateSerializer, ScheduleListSerializer,
    ActivitySerializer, ActivityCreateSerializer
)
from audit.mixins import AuditModelMixin

class IsAdminOrStaff(permissions.BasePermission):
    def has_permission(self, request, view):
        return request.user.is_authenticated and (
            request.user.user_type in ['admin', 'staff']
        )

    def has_object_permission(self, request, view, obj):
        return request.user.user_type in ['admin', 'staff']

class ScheduleViewSet(AuditModelMixin, viewsets.ModelViewSet):
    queryset = Schedule.objects.all()
    permission_classes = [IsAdminOrStaff]

    def get_queryset(self):
        user = self.request.user
        if user.is_superadmin():
            return Schedule.objects.all().select_related('event', 'event__location')
        return Schedule.objects.filter(company=user.company).select_related('event', 'event__location')

    def get_serializer_class(self):
        if self.action == 'create':
            return ScheduleCreateSerializer
        elif self.action == 'list':
            return ScheduleListSerializer
        return ScheduleSerializer

    def perform_create(self, serializer):
        serializer.save(company=self.request.user.company)

    @action(detail=True, methods=['post'])
    def add_activity(self, request, pk=None):
        """Agregar una nueva actividad al cronograma"""
        schedule = self.get_object()
        serializer = ActivityCreateSerializer(data=request.data)
        
        if serializer.is_valid():
            activity = serializer.save(schedule=schedule)
            return Response(
                ActivitySerializer(activity).data, 
                status=status.HTTP_201_CREATED
            )
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    @action(detail=True, methods=['get'])
    def activities(self, request, pk=None):
        """Obtener todas las actividades de un cronograma ordenadas por hora"""
        schedule = self.get_object()
        activities = schedule.activities.all().order_by('start_time', 'end_time')
        serializer = ActivitySerializer(activities, many=True)
        return Response(serializer.data)

class ActivityViewSet(AuditModelMixin, viewsets.ModelViewSet):
    queryset = Activity.objects.all()
    serializer_class = ActivitySerializer
    permission_classes = [IsAdminOrStaff]

    def get_queryset(self):
        user = self.request.user
        if user.is_superadmin():
            return Activity.objects.all().select_related('schedule', 'schedule__event')
        return Activity.objects.filter(
            schedule__company=user.company
        ).select_related('schedule', 'schedule__event')

    def get_serializer_class(self):
        if self.action == 'create':
            return ActivityCreateSerializer
        return ActivitySerializer

    def perform_create(self, serializer):
        # Obtener el cronograma desde los parámetros de la URL o datos
        schedule_id = self.request.data.get('schedule_id')
        if schedule_id:
            schedule = get_object_or_404(
                Schedule, 
                id=schedule_id, 
                company=self.request.user.company
            )
            serializer.save(schedule=schedule)
        else:
            # Si no se proporciona schedule_id, esperar que venga en los datos
            serializer.save()

    @action(detail=True, methods=['patch'])
    def update_status(self, request, pk=None):
        """Actualizar solo el estado de una actividad"""
        activity = self.get_object()
        new_status = request.data.get('status')
        
        if new_status not in dict(Activity.STATUS_CHOICES):
            return Response(
                {'error': 'Estado inválido'}, 
                status=status.HTTP_400_BAD_REQUEST
            )
        
        activity.status = new_status
        activity.save()
        
        return Response(
            ActivitySerializer(activity).data,
            status=status.HTTP_200_OK
        )