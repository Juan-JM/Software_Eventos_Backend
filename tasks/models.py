# backend/tasks/models.py
from django.db import models
from companies.models import Company
from staff.models import Staff
from events.models import Event

class Task(models.Model):
    STATUS_CHOICES = [
        ('pendiente', 'Pendiente'),
        ('en_progreso', 'En Progreso'),
        ('completada', 'Completada'),
        ('cancelada', 'Cancelada'),
    ]

    company = models.ForeignKey(
        Company,
        on_delete=models.CASCADE,
        related_name='tasks',
        help_text="La empresa a la que pertenece esta tarea"
    )
    title = models.CharField(max_length=255, verbose_name="Nombre o título de la tarea")
    description = models.TextField(verbose_name="Descripción detallada")
    start_datetime = models.DateTimeField(verbose_name="Fecha y hora de inicio")
    end_datetime = models.DateTimeField(verbose_name="Fecha y hora de finalización")
    event = models.ForeignKey(
        Event,
        on_delete=models.CASCADE,
        related_name='tasks',
        blank=True,
        null=True,
        verbose_name="Evento",
        help_text="Evento al que pertenece esta tarea (opcional)"
    )
    assigned_staff = models.ManyToManyField(
        Staff,
        related_name='assigned_tasks',
        blank=True,
        verbose_name="Responsables",
        help_text="Personal asignado a esta tarea"
    )
    status = models.CharField(
        max_length=15,
        choices=STATUS_CHOICES,
        default='pendiente',
        verbose_name="Estado de la tarea"
    )
    notes = models.TextField(
        blank=True,
        null=True,
        verbose_name="Notas o instrucciones adicionales"
    )
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    class Meta:
        db_table = 'tasks'
        verbose_name = 'Tarea'
        verbose_name_plural = 'Tareas'
        ordering = ['start_datetime']

    def __str__(self):
        return f"{self.title} - {self.get_status_display()}"

    @property
    def assigned_staff_names(self):
        """Obtiene los nombres del personal asignado como string"""
        return ", ".join([staff.full_name for staff in self.assigned_staff.all()])

    @property
    def event_name(self):
        """Obtiene el nombre del evento o 'Sin evento'"""
        return self.event.name if self.event else 'Sin evento'

    def clean(self):
        """Validaciones personalizadas"""
        from django.core.exceptions import ValidationError
        if self.start_datetime and self.end_datetime:
            if self.start_datetime >= self.end_datetime:
                raise ValidationError('La fecha de inicio debe ser anterior a la fecha de finalización')