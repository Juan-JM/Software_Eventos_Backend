from django.db import models
from companies.models import Company 
class Service(models.Model):
    UNIT_CHOICES = (
        ('event', 'Por Evento'),
        ('hour', 'Por Hora'),
        ('person', 'Por Persona'),
        ('day', 'Por Día'),
        ('unit', 'Por Unidad'),
    )
    company = models.ForeignKey(Company,on_delete=models.CASCADE,related_name='services')
    name = models.CharField(max_length=100)
    description = models.TextField()
    base_price = models.DecimalField(max_digits=10, decimal_places=2)
    unit_measure = models.CharField(max_length=10, choices=UNIT_CHOICES, default='event')
    standard_duration = models.PositiveIntegerField(blank=True, null=True, help_text="Duración en minutos (si aplica)")
    provider = models.CharField(max_length=100)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
    def __str__(self):
        return self.name