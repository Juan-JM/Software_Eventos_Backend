from rest_framework import serializers
from .models import Event
from locations.models import Location
from services.models import Service
from users.serializers import UserSerializer, UserCreateSerializer
from users.models      import User
from packages.models import Package

class LocationSimpleSerializer(serializers.ModelSerializer):
    class Meta:
        model = Location
        fields = ('id', 'name', 'address')

class ServiceSimpleSerializer(serializers.ModelSerializer):
    class Meta:
        model = Service
        fields = ('id', 'name')

class PackageSimpleSerializer(serializers.ModelSerializer):
    class Meta:
        model = Package
        fields = ('id', 'name')

class EventSerializer(serializers.ModelSerializer):
    # lecturas anidadas…
    location = LocationSimpleSerializer(read_only=True)
    services = ServiceSimpleSerializer(many=True, read_only=True)
    owner = UserSerializer(read_only=True)
    # campos para escritura…
    location_id   = serializers.PrimaryKeyRelatedField(queryset=Location.objects.all(), source='location', write_only=True)
    service_ids   = serializers.PrimaryKeyRelatedField(queryset=Service.objects.all(), many=True, source='services', write_only=True)
    owner_id      = serializers.PrimaryKeyRelatedField(source='owner', write_only=True, required=False, queryset=User.objects.none())
    owner_data    = UserCreateSerializer(write_only=True, required=False)

    # … __init__ y create() …
    def create(self, validated_data):
        owner_data = validated_data.pop('owner_data', None)
        if owner_data:
            owner_data.pop('password2', None)
            owner_data['user_type'] = 'customer'
            owner_data['company'] = self.context['request'].user.company
            owner = User.objects.create_user(**owner_data)
            validated_data['owner'] = owner

        # ¡OJO! aquí validated_data ya no tiene owner_data
        return super().create(validated_data)
    package = PackageSimpleSerializer(read_only=True)

    # Para escribir con IDs
    location_id = serializers.PrimaryKeyRelatedField(
        queryset=Location.objects.all(), source='location', write_only=True
    )
    # Campos opcionales según el tipo de evento (paquete o servicios)
    service_ids = serializers.PrimaryKeyRelatedField(
        queryset=Service.objects.all(), many=True, source='services', 
        write_only=True, required=False
    )
    
    package_id = serializers.PrimaryKeyRelatedField(
        queryset=Package.objects.all(), source='package', 
        write_only=True, required=False
    )


    class Meta:
        model = Event
        fields = [
            'id','name','description','start_date','end_date',
            'location','location_id',
            'services','service_ids',
            'status','image',
            'attendee_count',    # ← usa el mismo nombre que en el modelo
            'created_at','updated_at','company',
            'owner','owner_id','owner_data',
            'id', 'name', 'description', 'start_date', 'end_date',
            'location', 'location_id',
            'is_package',  # Nuevo campo
            'services', 'service_ids',
            'package', 'package_id',
            'status', 'image',
            'created_at', 'updated_at', 'company'  # <- Añadido aquí
        ]
        read_only_fields = ('created_at','updated_at','company')

    def validate(self, data):
        location = data['location']
        start = data['start_date']
        end = data['end_date']

        event_id = self.instance.id if self.instance else None

        overlapping_events = Event.objects.filter(
            location=location,
            start_date__lt=end,
            end_date__gt=start
        ).exclude(id=event_id)

        if overlapping_events.exists():
            raise serializers.ValidationError("Ya existe un evento programado en esta locación para esas fechas.")

        request = self.context.get('request')
        if request and request.user.company != location.company:
            raise serializers.ValidationError("No puedes usar una locación de otra empresa.")

        return data
  #  def validate(self, data):
    """
    Validar que se proporcione package o services según el valor de is_package
    """
   #     is_package = data.get('is_package', False)
        
    #    if is_package:
    #        if 'package' not in data:
     #           raise serializers.ValidationError(
     #               "Debe proporcionar un package_id cuando is_package es True"
     #           )
     #   else:
     #       if 'services' not in data or not data['services']:
     #           raise serializers.ValidationError(
     #               "Debe proporcionar service_ids cuando is_package es False"
     #           )
     #   
     #   return data
