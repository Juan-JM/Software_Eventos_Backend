# backend/tasks/views.py
from rest_framework import viewsets, permissions, status
from rest_framework.response import Response
from rest_framework.decorators import action
from rest_framework.permissions import BasePermission
from django.db.models import Q
from django.utils import timezone
from .models import Task
from .serializers import TaskSerializer, TaskListSerializer, TaskCreateUpdateSerializer

class IsAdminOrStaff(BasePermission):
    """Permiso para admin y staff de la empresa"""
    def has_permission(self, request, view):
        return request.user.is_authenticated and (
            request.user.user_type in ['admin', 'staff', 'superadmin']
        )

class TaskViewSet(viewsets.ModelViewSet):
    queryset = Task.objects.all()
    serializer_class = TaskSerializer

    def get_queryset(self):
        """Filtrar tareas por empresa del usuario"""
        user = self.request.user
        if user.is_superadmin():
            return Task.objects.all()
        return Task.objects.filter(company=user.company)

    def get_permissions(self):
        """Permisos: admin y staff pueden acceder a tareas"""
        return [IsAdminOrStaff()]

    def get_serializer_class(self):
        """Usar serializer apropiado según la acción"""
        if self.action == 'list':
            return TaskListSerializer
        elif self.action in ['create', 'update', 'partial_update']:
            return TaskCreateUpdateSerializer
        return TaskSerializer

    def get_serializer_context(self):
        """Agregar empresa al contexto"""
        context = super().get_serializer_context()
        context['company'] = self.request.user.company
        return context

    def perform_create(self, serializer):
        """Asignar empresa al crear tarea"""
        user = self.request.user
        if user.is_superadmin():
            # Si es superadmin, debe especificar la empresa
            company = serializer.validated_data.get('company')
            if not company:
                # Si no especifica, usar su empresa por defecto
                company = user.company
        else:
            # Si es admin o staff, usar su empresa
            company = user.company
        
        serializer.save(company=company)

    @action(detail=False, methods=['get'])
    def by_status(self, request):
        """Filtrar tareas por estado"""
        status_filter = request.query_params.get('status', '')
        if not status_filter:
            return Response([])

        queryset = self.get_queryset().filter(status=status_filter)
        serializer = TaskListSerializer(queryset, many=True)
        return Response(serializer.data)

    @action(detail=False, methods=['get'])
    def by_event(self, request):
        """Filtrar tareas por evento"""
        event_id = request.query_params.get('event_id', '')
        if not event_id:
            return Response([])

        queryset = self.get_queryset().filter(event_id=event_id)
        serializer = TaskListSerializer(queryset, many=True)
        return Response(serializer.data)

    @action(detail=False, methods=['get'])
    def pending(self, request):
        """Obtener tareas pendientes"""
        queryset = self.get_queryset().filter(status='pendiente')
        serializer = TaskListSerializer(queryset, many=True)
        return Response(serializer.data)

    @action(detail=False, methods=['get'])
    def upcoming(self, request):
        """Obtener tareas próximas (siguiente semana)"""
        now = timezone.now()
        next_week = now + timezone.timedelta(days=7)
        
        queryset = self.get_queryset().filter(
            start_datetime__gte=now,
            start_datetime__lte=next_week
        ).exclude(status='cancelada')
        
        serializer = TaskListSerializer(queryset, many=True)
        return Response(serializer.data)

    @action(detail=False, methods=['get'])
    def my_tasks(self, request):
        """Obtener tareas asignadas al usuario actual"""
        # Esto requiere que el usuario tenga un staff relacionado
        # Podrías crear una relación entre User y Staff si es necesario
        queryset = self.get_queryset().filter(
            assigned_staff__email=request.user.email
        )
        serializer = TaskListSerializer(queryset, many=True)
        return Response(serializer.data)

    @action(detail=True, methods=['patch'])
    def update_status(self, request, pk=None):
        """Actualizar solo el estado de una tarea"""
        task = self.get_object()
        new_status = request.data.get('status')
        
        if new_status not in dict(Task.STATUS_CHOICES):
            return Response(
                {'error': 'Estado no válido'}, 
                status=status.HTTP_400_BAD_REQUEST
            )
        
        task.status = new_status
        task.save()
        
        serializer = self.get_serializer(task)
        return Response(serializer.data)

    @action(detail=False, methods=['get'])
    def search(self, request):
        """Buscar tareas por título o descripción"""
        query = request.query_params.get('q', '')
        if not query:
            return Response([])

        queryset = self.get_queryset().filter(
            Q(title__icontains=query) |
            Q(description__icontains=query)
        )

        serializer = TaskListSerializer(queryset, many=True)
        return Response(serializer.data)