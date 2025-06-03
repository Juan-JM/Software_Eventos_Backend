# schedules/models.py
from django.db import models
from events.models import Event
from companies.models import Company

class Schedule(models.Model):
    event = models.OneToOneField(
        Event, 
        on_delete=models.CASCADE, 
        related_name='schedule',
        help_text="Evento al que pertenece este cronograma"
    )
    start_time = models.TimeField(help_text="Hora de inicio del cronograma")
    end_time = models.TimeField(help_text="Hora de finalización del cronograma")
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    company = models.ForeignKey(
        Company, 
        on_delete=models.CASCADE, 
        related_name='schedules'
    )

    class Meta:
        ordering = ['event__start_date']
        verbose_name = 'Cronograma'
        verbose_name_plural = 'Cronogramas'

    def __str__(self):
        return f"Cronograma de {self.event.name}"

    @property
    def event_name(self):
        return self.event.name

    @property
    def event_date(self):
        return self.event.start_date.date()

    @property
    def event_location(self):
        return self.event.location.name if self.event.location else None

    @property
    def total_activities(self):
        return self.activities.count()

    @property
    def completed_activities(self):
        return self.activities.filter(status='completada').count()

class Activity(models.Model):
    STATUS_CHOICES = (
        ('planificada', 'Planificada'),
        ('en_progreso', 'En Progreso'),
        ('completada', 'Completada'),
        ('cancelada', 'Cancelada'),
    )

    schedule = models.ForeignKey(
        Schedule, 
        on_delete=models.CASCADE, 
        related_name='activities',
        help_text="Cronograma al que pertenece esta actividad"
    )
    title = models.CharField(
        max_length=200, 
        help_text="Nombre o título de la actividad"
    )
    description = models.TextField(
        help_text="Descripción detallada de la actividad"
    )
    start_time = models.TimeField(help_text="Hora de inicio de la actividad")
    end_time = models.TimeField(help_text="Hora de finalización de la actividad")
    status = models.CharField(
        max_length=20, 
        choices=STATUS_CHOICES, 
        default='planificada',
        help_text="Estado actual de la actividad"
    )
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    class Meta:
        ordering = ['start_time', 'end_time']
        verbose_name = 'Actividad'
        verbose_name_plural = 'Actividades'

    def __str__(self):
        return f"{self.title} - {self.start_time} a {self.end_time}"

    @property
    def duration_minutes(self):
        """Calcula la duración en minutos"""
        from datetime import datetime, timedelta
        start = datetime.combine(datetime.today(), self.start_time)
        end = datetime.combine(datetime.today(), self.end_time)
        
        # Manejar el caso donde la actividad cruza medianoche
        if end < start:
            end += timedelta(days=1)
            
        duration = end - start
        return int(duration.total_seconds() / 60)

    @property
    def duration_formatted(self):
        """Retorna la duración en formato legible"""
        minutes = self.duration_minutes
        if minutes < 60:
            return f"{minutes} min"
        else:
            hours = minutes // 60
            remaining_minutes = minutes % 60
            if remaining_minutes == 0:
                return f"{hours}h"
            else:
                return f"{hours}h {remaining_minutes}min"

    def clean(self):
        from django.core.exceptions import ValidationError
        if self.start_time >= self.end_time:
            raise ValidationError("La hora de inicio debe ser anterior a la hora de finalización")