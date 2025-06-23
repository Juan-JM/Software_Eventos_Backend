from django.db import models
from django.contrib.auth import get_user_model
from events.models import Event

User = get_user_model()

class Invitation(models.Model):
    """
    Modelo para gestionar invitaciones a eventos.
    Solo los usuarios customer pueden crear invitaciones.
    """
    
    # Tipos de invitación
    INVITATION_TYPES = [
        ('familia', 'Familia'),
        ('general', 'General'),
        ('trabajo', 'Trabajo'),
        ('amigos', 'Amigos'),
    ]
    
    # Estados de invitación
    STATUS_CHOICES = [
        ('pendiente', 'Pendiente'),
        ('enviada', 'Enviada'),
        ('confirmada', 'Confirmada'),
        ('rechazada', 'Rechazada'),
        ('cancelada', 'Cancelada'),
    ]
    
    # Relaciones
    event = models.ForeignKey(
        Event, 
        on_delete=models.CASCADE, 
        related_name='invitations',
        verbose_name="Evento"
    )
    created_by = models.ForeignKey(
        User, 
        on_delete=models.CASCADE, 
        related_name='sent_invitations',
        verbose_name="Creado por"
    )
    
    # Información del invitado
    guest_name = models.CharField(
        max_length=200, 
        verbose_name="Nombre del Invitado"
    )
    guest_email = models.EmailField(
        verbose_name="Email del Invitado"
    )
    guest_phone = models.CharField(
        max_length=15, 
        blank=True, 
        null=True,
        verbose_name="Teléfono del Invitado"
    )
    
    # Información de la invitación
    invitation_type = models.CharField(
        max_length=20,
        choices=INVITATION_TYPES,
        default='general',
        verbose_name="Tipo de Invitación"
    )
    
    custom_message = models.TextField(
        blank=True,
        null=True,
        verbose_name="Mensaje para el Invitado",
        help_text="Mensaje personalizado para el invitado"
    )
    
    status = models.CharField(
        max_length=20,
        choices=STATUS_CHOICES,
        default='pendiente',
        verbose_name="Estado de la Invitación"
    )
    
    # NUEVO CAMPO - Asientos asignados
    assigned_seats = models.CharField(
        max_length=500,
        blank=True,
        null=True,
        verbose_name="Asientos Asignados",
        help_text="Asientos separados por comas, ej: A-1,A-2,A-3"
    )
    
    # Metadatos
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    sent_at = models.DateTimeField(
        blank=True, 
        null=True,
        verbose_name="Fecha de Envío"
    )
    confirmed_at = models.DateTimeField(
        blank=True, 
        null=True,
        verbose_name="Fecha de Confirmación"
    )
    
    # Token único para confirmación/rechazo (opcional)
    confirmation_token = models.CharField(
        max_length=64,
        unique=True,
        blank=True,
        null=True,
        verbose_name="Token de Confirmación"
    )
    
    class Meta:
        verbose_name = "Invitación"
        verbose_name_plural = "Invitaciones"
        ordering = ['-created_at']
        unique_together = ['event', 'guest_email']  # Un email por evento
    
    def __str__(self):
        return f"Invitación a {self.guest_name} para {self.event.name}"
    
    @property
    def organizing_company(self):
        """
        Retorna el nombre de la empresa organizadora
        (empresa del usuario que creó la invitación)
        """
        if self.created_by.company:
            return self.created_by.company.name
        return "Sin empresa asignada"
    
    @property
    def event_name(self):
        """Retorna el nombre del evento"""
        return self.event.name
    
    @property
    def event_attendees_count(self):
        """Retorna la cantidad de asistentes del evento"""
        return self.event.attendee_count
    
    @property
    def assigned_seats_list(self):
        """Retorna los asientos como lista"""
        if self.assigned_seats:
            return [seat.strip() for seat in self.assigned_seats.split(',') if seat.strip()]
        return []
    
    def generate_confirmation_token(self):
        """Genera un token único para confirmación"""
        import secrets
        self.confirmation_token = secrets.token_urlsafe(32)
        return self.confirmation_token
    
    def confirm_invitation(self):
        """Marca la invitación como confirmada"""
        from django.utils import timezone
        self.status = 'confirmada'
        self.confirmed_at = timezone.now()
        self.save()
    
    def reject_invitation(self):
        """Marca la invitación como rechazada"""
        self.status = 'rechazada'
        self.save()
    
    def send_invitation(self):
        """Marca la invitación como enviada"""
        from django.utils import timezone
        self.status = 'enviada'
        self.sent_at = timezone.now()
        if not self.confirmation_token:
            self.generate_confirmation_token()
        self.save()
    
    def get_occupied_seats_for_event(self):
        """Obtiene todos los asientos ocupados para este evento"""
        occupied_seats = set()
        existing_invitations = Invitation.objects.filter(
            event=self.event
        ).exclude(id=self.id)
        
        for invitation in existing_invitations:
            if invitation.assigned_seats:
                seats = invitation.assigned_seats.split(',')
                occupied_seats.update([seat.strip() for seat in seats if seat.strip()])
        
        return occupied_seats
    
    def generate_available_seats(self):
        """Genera la lista de asientos disponibles para este evento"""
        if not self.event or not self.event.attendee_count:
            return []
            
        # Calcular total de asientos (base + 10%)
        base_attendees = self.event.attendee_count
        total_seats = int(base_attendees * 1.1)
        
        # Obtener asientos ocupados
        occupied_seats = self.get_occupied_seats_for_event()
        
        # Generar lista de asientos disponibles
        available_seats = []
        for i in range(1, total_seats + 1):
            seat = f"A-{i}"
            if seat not in occupied_seats:
                available_seats.append(seat)
        
        return available_seats
    
    def assign_seats(self, number_of_seats=1):
        """
        Asigna asientos automáticamente para esta invitación
        
        Args:
            number_of_seats (int): Número de asientos a asignar
            
        Returns:
            list: Lista de asientos asignados
            
        Raises:
            ValueError: Si no hay suficientes asientos disponibles
        """
        if not self.event:
            raise ValueError("La invitación debe tener un evento asociado")
            
        # Obtener asientos disponibles
        available_seats = self.generate_available_seats()
        
        # Verificar disponibilidad
        if len(available_seats) < number_of_seats:
            raise ValueError(
                f"No hay suficientes asientos disponibles. "
                f"Solicitados: {number_of_seats}, "
                f"Disponibles: {len(available_seats)}"
            )
        
        # Asignar los primeros asientos disponibles
        selected_seats = available_seats[:number_of_seats]
        self.assigned_seats = ','.join(selected_seats)
        self.save()
        
        return selected_seats
    
    def reassign_seats(self, number_of_seats=None):
        """
        Reasigna asientos para esta invitación
        
        Args:
            number_of_seats (int, optional): Nuevo número de asientos. 
                                           Si no se especifica, mantiene el número actual.
        """
        current_seats_count = len(self.assigned_seats_list)
        seats_to_assign = number_of_seats if number_of_seats is not None else current_seats_count
        
        # Limpiar asientos actuales
        self.assigned_seats = None
        self.save()
        
        # Asignar nuevos asientos
        return self.assign_seats(seats_to_assign)
    
    def get_total_available_seats(self):
        """Retorna el total de asientos disponibles para este evento"""
        if not self.event or not self.event.attendee_count:
            return 0
        return int(self.event.attendee_count * 1.1)
    
    def get_event_occupancy_info(self):
        """Retorna información de ocupación del evento"""
        total_seats = self.get_total_available_seats()
        occupied_seats = len(self.get_occupied_seats_for_event())
        
        # Si esta invitación tiene asientos, incluirlos en el conteo
        if self.assigned_seats:
            occupied_seats += len(self.assigned_seats_list)
            
        available_seats = total_seats - occupied_seats
        
        return {
            'total_seats': total_seats,
            'occupied_seats': occupied_seats,
            'available_seats': available_seats,
            'occupancy_percentage': round((occupied_seats / total_seats) * 100, 2) if total_seats > 0 else 0
        }