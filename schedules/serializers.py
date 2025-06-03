# schedules/serializers.py
from rest_framework import serializers
from .models import Schedule, Activity
from events.models import Event

class ActivitySerializer(serializers.ModelSerializer):
    duration_formatted = serializers.ReadOnlyField()
    duration_minutes = serializers.ReadOnlyField()

    class Meta:
        model = Activity
        fields = [
            'id', 'title', 'description', 'start_time', 'end_time',
            'status', 'duration_minutes', 'duration_formatted',
            'created_at', 'updated_at'
        ]
        read_only_fields = ('created_at', 'updated_at')

    def validate(self, data):
        if data['start_time'] >= data['end_time']:
            raise serializers.ValidationError(
                "La hora de inicio debe ser anterior a la hora de finalización"
            )
        return data

class ActivityCreateSerializer(serializers.ModelSerializer):
    class Meta:
        model = Activity
        fields = [
            'title', 'description', 'start_time', 'end_time', 'status'
        ]

    def validate(self, data):
        if data['start_time'] >= data['end_time']:
            raise serializers.ValidationError(
                "La hora de inicio debe ser anterior a la hora de finalización"
            )
        return data

class EventSimpleSerializer(serializers.ModelSerializer):
    location_name = serializers.CharField(source='location.name', read_only=True)
    
    class Meta:
        model = Event
        fields = ['id', 'name', 'start_date', 'location_name']

class ScheduleSerializer(serializers.ModelSerializer):
    # Para leer datos relacionados
    event = EventSimpleSerializer(read_only=True)
    activities = ActivitySerializer(many=True, read_only=True)
    event_name = serializers.ReadOnlyField()
    event_date = serializers.ReadOnlyField()
    event_location = serializers.ReadOnlyField()
    total_activities = serializers.ReadOnlyField()
    completed_activities = serializers.ReadOnlyField()

    # Para escribir
    event_id = serializers.PrimaryKeyRelatedField(
        queryset=Event.objects.all(), 
        source='event', 
        write_only=True
    )

    class Meta:
        model = Schedule
        fields = [
            'id', 'event', 'event_id', 'start_time', 'end_time',
            'event_name', 'event_date', 'event_location',
            'total_activities', 'completed_activities',
            'activities', 'created_at', 'updated_at', 'company'
        ]
        read_only_fields = ('created_at', 'updated_at', 'company')

    def validate(self, data):
        event = data['event']
        start = data['start_time']
        end = data['end_time']

        if start >= end:
            raise serializers.ValidationError(
                "La hora de inicio debe ser anterior a la hora de finalización"
            )

        # Verificar que el evento pertenezca a la misma empresa del usuario
        request = self.context.get('request')
        if request and request.user.company != event.company:
            raise serializers.ValidationError(
                "No puedes crear un cronograma para un evento de otra empresa."
            )

        # Verificar que el evento no tenga ya un cronograma (excepto en edición)
        schedule_id = self.instance.id if self.instance else None
        existing_schedule = Schedule.objects.filter(event=event).exclude(id=schedule_id)
        
        if existing_schedule.exists():
            raise serializers.ValidationError(
                "Este evento ya tiene un cronograma asignado."
            )

        return data

class ScheduleCreateSerializer(serializers.ModelSerializer):
    event_id = serializers.PrimaryKeyRelatedField(
        queryset=Event.objects.all(), 
        source='event'
    )

    class Meta:
        model = Schedule
        fields = ['event_id', 'start_time', 'end_time']

    def validate(self, data):
        event = data['event']
        start = data['start_time']
        end = data['end_time']

        if start >= end:
            raise serializers.ValidationError(
                "La hora de inicio debe ser anterior a la hora de finalización"
            )

        # Verificar que el evento pertenezca a la misma empresa del usuario
        request = self.context.get('request')
        if request and request.user.company != event.company:
            raise serializers.ValidationError(
                "No puedes crear un cronograma para un evento de otra empresa."
            )

        # Verificar que el evento no tenga ya un cronograma
        if Schedule.objects.filter(event=event).exists():
            raise serializers.ValidationError(
                "Este evento ya tiene un cronograma asignado."
            )

        return data

class ScheduleListSerializer(serializers.ModelSerializer):
    event_name = serializers.ReadOnlyField()
    event_date = serializers.ReadOnlyField()
    event_location = serializers.ReadOnlyField()
    total_activities = serializers.ReadOnlyField()
    completed_activities = serializers.ReadOnlyField()

    class Meta:
        model = Schedule
        fields = [
            'id', 'event_name', 'event_date', 'event_location',
            'start_time', 'end_time', 'total_activities', 
            'completed_activities', 'created_at', 'updated_at'
        ]