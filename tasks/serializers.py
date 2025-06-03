# backend/tasks/serializers.py
from rest_framework import serializers
from .models import Task
from staff.serializers import StaffListSerializer
from events.models import Event

class TaskSerializer(serializers.ModelSerializer):
    assigned_staff_details = StaffListSerializer(source='assigned_staff', many=True, read_only=True)
    assigned_staff_names = serializers.ReadOnlyField()
    event_name = serializers.ReadOnlyField()
    status_display = serializers.CharField(source='get_status_display', read_only=True)
    
    class Meta:
        model = Task
        fields = [
            'id',
            'company',
            'title',
            'description',
            'start_datetime',
            'end_datetime',
            'event',
            'event_name',
            'assigned_staff',
            'assigned_staff_details',
            'assigned_staff_names',
            'status',
            'status_display',
            'notes',
            'created_at',
            'updated_at'
        ]
        read_only_fields = ['id', 'created_at', 'updated_at']

    def validate(self, data):
        """Validaciones personalizadas"""
        if data.get('start_datetime') and data.get('end_datetime'):
            if data['start_datetime'] >= data['end_datetime']:
                raise serializers.ValidationError(
                    "La fecha de inicio debe ser anterior a la fecha de finalización"
                )
        return data

    def validate_event(self, value):
        """Validar que el evento pertenezca a la misma empresa"""
        if value:
            company = self.context.get('company')
            if company and value.company != company:
                raise serializers.ValidationError(
                    "El evento debe pertenecer a la misma empresa."
                )
        return value

    def validate_assigned_staff(self, value):
        """Validar que el personal asignado pertenezca a la misma empresa"""
        company = self.context.get('company')
        if company and value:
            for staff in value:
                if staff.company != company:
                    raise serializers.ValidationError(
                        f"El personal '{staff.full_name}' no pertenece a la misma empresa."
                    )
        return value

class TaskListSerializer(serializers.ModelSerializer):
    """Serializer simplificado para listas"""
    assigned_staff_names = serializers.ReadOnlyField()
    event_name = serializers.ReadOnlyField()
    status_display = serializers.CharField(source='get_status_display', read_only=True)
    
    class Meta:
        model = Task
        fields = [
            'id',
            'title',
            'start_datetime',
            'end_datetime',
            'event_name',
            'assigned_staff_names',
            'status',
            'status_display'
        ]

class TaskCreateUpdateSerializer(serializers.ModelSerializer):
    """Serializer específico para crear y actualizar tareas"""
    
    class Meta:
        model = Task
        fields = [
            'title',
            'description',
            'start_datetime',
            'end_datetime',
            'event',
            'assigned_staff',
            'status',
            'notes'
        ]

    def validate(self, data):
        """Validaciones personalizadas"""
        if data.get('start_datetime') and data.get('end_datetime'):
            if data['start_datetime'] >= data['end_datetime']:
                raise serializers.ValidationError(
                    "La fecha de inicio debe ser anterior a la fecha de finalización"
                )
        return data