from rest_framework import serializers
from .models import Event
from locations.models import Location
from services.models import Service

class LocationSimpleSerializer(serializers.ModelSerializer):
    class Meta:
        model = Location
        fields = ('id', 'name')

class ServiceSimpleSerializer(serializers.ModelSerializer):
    class Meta:
        model = Service
        fields = ('id', 'name')

class EventSerializer(serializers.ModelSerializer):
    # Para leer locación y servicios como objetos
    location = LocationSimpleSerializer(read_only=True)
    services = ServiceSimpleSerializer(many=True, read_only=True)

    # Para escribir con IDs
    location_id = serializers.PrimaryKeyRelatedField(
        queryset=Location.objects.all(), source='location', write_only=True
    )
    service_ids = serializers.PrimaryKeyRelatedField(
        queryset=Service.objects.all(), many=True, source='services', write_only=True
    )

    class Meta:
        model = Event
        fields = [
            'id', 'name', 'description', 'start_date', 'end_date',
            'location', 'location_id',  # location (read) y location_id (write)
            'services', 'service_ids',  # services (read) y service_ids (write)
            'status', 'image',
            'created_at', 'updated_at'
        ]
        read_only_fields = ('created_at', 'updated_at')
