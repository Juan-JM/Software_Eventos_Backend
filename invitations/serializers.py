from rest_framework import serializers
from .models import Invitation
from events.models import Event
from events.serializers import EventSerializer

class InvitationSerializer(serializers.ModelSerializer):
    """
    Serializer para el modelo Invitation
    """
    
    # 🔧 SOBRESCRIBIR el campo assigned_seats para aceptar listas
    assigned_seats = serializers.CharField(required=False, allow_blank=True, allow_null=True)
    
    # Campos de solo lectura que se calculan automáticamente
    organizing_company = serializers.ReadOnlyField()
    event_name = serializers.ReadOnlyField()
    event_attendees_count = serializers.ReadOnlyField()
    created_by_name = serializers.SerializerMethodField()
    
    # Campos de asientos
    assigned_seats_list = serializers.ReadOnlyField()  # Lista de asientos
    event_occupancy_info = serializers.SerializerMethodField()  # Info de ocupación
    
    # Información adicional del evento
    event_details = EventSerializer(source='event', read_only=True)
    
    class Meta:
        model = Invitation
        fields = [
            'id',
            'event',
            'event_details',
            'event_name',
            'event_attendees_count',
            'organizing_company',
            'created_by',
            'created_by_name',
            'guest_name',
            'guest_email',
            'guest_phone',
            'invitation_type',
            'custom_message',
            'status',
            'assigned_seats',           # Campo de asientos (string)
            'assigned_seats_list',      # Lista de asientos
            'event_occupancy_info',     # Info de ocupación del evento
            'created_at',
            'updated_at',
            'sent_at',
            'confirmed_at',
            'confirmation_token',
        ]
        read_only_fields = [
            'id',
            'created_by',
            'created_at',
            'updated_at',
            'sent_at',
            'confirmed_at',
            'confirmation_token',
            'organizing_company',
            'event_name',
            'event_attendees_count',
            'assigned_seats_list',
            'event_occupancy_info',
        ]
    
    def to_internal_value(self, data):
        """🔧 SOBRESCRIBIR para manejar assigned_seats como lista"""
        print(f"🔧 to_internal_value recibiendo: {data.get('assigned_seats')} (tipo: {type(data.get('assigned_seats'))})")
        
        # Crear una copia modificable de data
        if hasattr(data, '_mutable'):
            data._mutable = True
        else:
            data = data.copy()
        
        # Si assigned_seats es una lista, convertir a string
        if 'assigned_seats' in data and isinstance(data['assigned_seats'], list):
            seats_list = data['assigned_seats']
            seats_string = ','.join(seats_list)
            print(f"🔧 Convertido: {seats_list} → {seats_string}")
            data['assigned_seats'] = seats_string
        
        # Continuar con la validación normal
        return super().to_internal_value(data)
    
    def get_created_by_name(self, obj):
        """Retorna el nombre completo del usuario que creó la invitación"""
        if obj.created_by.first_name and obj.created_by.last_name:
            return f"{obj.created_by.first_name} {obj.created_by.last_name}"
        return obj.created_by.username
    
    def get_event_occupancy_info(self, obj):
        """Retorna información de ocupación del evento"""
        try:
            return obj.get_event_occupancy_info()
        except:
            return {
                'total_seats': 0,
                'occupied_seats': 0,
                'available_seats': 0,
                'occupancy_percentage': 0
            }
    
    def validate_assigned_seats(self, value):
        """Valida y procesa los asientos enviados"""
        print(f"🔍 Validando assigned_seats: {value} (tipo: {type(value)})")
        
        if isinstance(value, list):
            # Si viene como lista, convertir a string
            result = ','.join(value)
            print(f"🔍 Convertido de lista a string: {result}")
            return result
        elif isinstance(value, str):
            # Si viene como string, mantenerlo
            print(f"🔍 Manteniendo como string: {value}")
            return value
        
        print(f"🔍 Valor sin cambios: {value}")
        return value
    
    def validate_event(self, value):
        """
        Valida que el evento pertenezca al usuario que está creando la invitación
        """
        request = self.context.get('request')
        if request and request.user:
            # Solo los customers pueden crear invitaciones
            if request.user.user_type != 'customer':
                raise serializers.ValidationError(
                    "Solo los clientes pueden crear invitaciones."
                )
            
            # El evento debe pertenecer al usuario (ser el owner)
            if value.owner != request.user:
                raise serializers.ValidationError(
                    "Solo puedes crear invitaciones para tus propios eventos."
                )
        
        return value
    
    def validate(self, data):
        """
        Validaciones adicionales
        """
        # Verificar que no exista ya una invitación para este email en este evento
        if not self.instance:  # Solo en creación, no en actualización
            event = data.get('event')
            guest_email = data.get('guest_email')
            
            if event and guest_email:
                existing_invitation = Invitation.objects.filter(
                    event=event,
                    guest_email=guest_email
                ).exists()
                
                if existing_invitation:
                    raise serializers.ValidationError(
                        "Ya existe una invitación para este email en este evento."
                    )
        
        return data


class InvitationCreateSerializer(serializers.ModelSerializer):
    """
    Serializer simplificado para crear invitaciones
    """
    # 🔧 SOBRESCRIBIR el campo assigned_seats para aceptar listas
    assigned_seats = serializers.CharField(required=False, allow_blank=True, allow_null=True)

    class Meta:
        model = Invitation
        fields = [
            'event',
            'guest_name',
            'guest_email',
            'guest_phone',
            'invitation_type',
            'custom_message',
            'assigned_seats',  # ✅ AGREGADO: Campo para recibir asientos del frontend
        ]
    
    def to_internal_value(self, data):
        """🔧 SOBRESCRIBIR para manejar assigned_seats como lista"""
        print(f"🔧 CREATE to_internal_value recibiendo: {data.get('assigned_seats')} (tipo: {type(data.get('assigned_seats'))})")
        
        # Crear una copia modificable de data
        if hasattr(data, '_mutable'):
            data._mutable = True
        else:
            data = data.copy()
        
        # Si assigned_seats es una lista, convertir a string
        if 'assigned_seats' in data and isinstance(data['assigned_seats'], list):
            seats_list = data['assigned_seats']
            seats_string = ','.join(seats_list)
            print(f"🔧 CREATE Convertido: {seats_list} → {seats_string}")
            data['assigned_seats'] = seats_string
        
        # Continuar con la validación normal
        return super().to_internal_value(data)
    
    def validate_assigned_seats(self, value):
        """Valida y procesa los asientos enviados"""
        print(f"🔍 CREATE: Validando assigned_seats: {value} (tipo: {type(value)})")
        
        if isinstance(value, list):
            result = ','.join(value)
            print(f"🔍 CREATE: Convertido de lista a string: {result}")
            return result
        elif isinstance(value, str):
            print(f"🔍 CREATE: Manteniendo como string: {value}")
            return value
        
        return value
    
    def validate_event(self, value):
        """Valida que el evento pertenezca al usuario"""
        request = self.context.get('request')
        if request and request.user:
            if request.user.user_type != 'customer':
                raise serializers.ValidationError(
                    "Solo los clientes pueden crear invitaciones."
                )
            
            if value.owner != request.user:
                raise serializers.ValidationError(
                    "Solo puedes crear invitaciones para tus propios eventos."
                )
        
        return value


class InvitationStatusUpdateSerializer(serializers.ModelSerializer):
    """
    Serializer para actualizar solo el estado de la invitación
    """
    
    class Meta:
        model = Invitation
        fields = ['status']
    
    def validate_status(self, value):
        """Valida las transiciones de estado"""
        if self.instance:
            current_status = self.instance.status
            
            # Definir transiciones válidas
            valid_transitions = {
                'pendiente': ['enviada', 'cancelada'],
                'enviada': ['confirmada', 'rechazada', 'cancelada'],
                'confirmada': ['cancelada'],
                'rechazada': ['enviada'],  # Se puede reenviar
                'cancelada': []  # No se puede cambiar desde cancelada
            }
            
            if value not in valid_transitions.get(current_status, []):
                raise serializers.ValidationError(
                    f"No se puede cambiar de '{current_status}' a '{value}'"
                )
        
        return value


class InvitationSeatManagementSerializer(serializers.ModelSerializer):
    """
    Serializer para gestionar asientos de la invitación
    """
    number_of_seats = serializers.IntegerField(write_only=True, min_value=1, max_value=10)
    available_seats = serializers.SerializerMethodField(read_only=True)
    
    class Meta:
        model = Invitation
        fields = [
            'id',
            'assigned_seats',
            'assigned_seats_list',
            'number_of_seats',
            'available_seats',
            'event_occupancy_info'
        ]
        read_only_fields = [
            'id',
            'assigned_seats',
            'assigned_seats_list',
        ]
    
    def get_available_seats(self, obj):
        """Retorna los asientos disponibles para este evento"""
        try:
            return obj.generate_available_seats()
        except:
            return []
    
    def get_event_occupancy_info(self, obj):
        """Retorna información de ocupación del evento"""
        try:
            return obj.get_event_occupancy_info()
        except:
            return {
                'total_seats': 0,
                'occupied_seats': 0,
                'available_seats': 0,
                'occupancy_percentage': 0
            }
    
    def update(self, instance, validated_data):
        """Actualiza los asientos asignados"""
        number_of_seats = validated_data.get('number_of_seats')
        
        if number_of_seats:
            try:
                instance.reassign_seats(number_of_seats)
            except ValueError as e:
                raise serializers.ValidationError({
                    'number_of_seats': str(e)
                })
        
        return instance


class InvitationPublicSerializer(serializers.ModelSerializer):
    """
    Serializer público para cuando los invitados confirman/rechazan
    (sin información sensible)
    """
    event_name = serializers.ReadOnlyField()
    organizing_company = serializers.ReadOnlyField()
    assigned_seats_list = serializers.ReadOnlyField()
    
    class Meta:
        model = Invitation
        fields = [
            'id',
            'event_name',
            'organizing_company',
            'guest_name',
            'guest_email',
            'invitation_type',
            'custom_message',
            'status',
            'assigned_seats_list',  # Mostrar asientos asignados al invitado
            'created_at',
        ]
        read_only_fields = '__all__'


class InvitationDetailSerializer(serializers.ModelSerializer):
    """
    Serializer detallado para mostrar información completa de la invitación
    """
    organizing_company = serializers.ReadOnlyField()
    event_name = serializers.ReadOnlyField()
    event_attendees_count = serializers.ReadOnlyField()
    created_by_name = serializers.SerializerMethodField()
    assigned_seats_list = serializers.ReadOnlyField()
    event_occupancy_info = serializers.SerializerMethodField()
    event_details = EventSerializer(source='event', read_only=True)
    
    class Meta:
        model = Invitation
        fields = '__all__'
        read_only_fields = [
            'id',
            'created_by',
            'created_at',
            'updated_at',
            'sent_at',
            'confirmed_at',
            'confirmation_token',
            # ✅ PERMITIR escritura de assigned_seats en updates
        ]
    
    def get_created_by_name(self, obj):
        """Retorna el nombre completo del usuario que creó la invitación"""
        if obj.created_by.first_name and obj.created_by.last_name:
            return f"{obj.created_by.first_name} {obj.created_by.last_name}"
        return obj.created_by.username
    
    def get_event_occupancy_info(self, obj):
        """Retorna información de ocupación del evento"""
        try:
            return obj.get_event_occupancy_info()
        except:
            return {
                'total_seats': 0,
                'occupied_seats': 0,
                'available_seats': 0,
                'occupancy_percentage': 0
            }