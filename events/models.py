from django.db import models
from services.models import Service
from locations.models import Location
from companies.models import Company
from packages.models import Package

class Event(models.Model):
    STATUS_CHOICES = (
        ('scheduled', 'Programado'),
        ('in_progress', 'En curso'),
        ('completed', 'Finalizado'),
        ('cancelled', 'Cancelado'),
    )
    
    name = models.CharField(max_length=200)
    description = models.TextField()
    start_date = models.DateTimeField()
    end_date = models.DateTimeField()
    location = models.ForeignKey(Location, on_delete=models.CASCADE, related_name='events')

    # Nuevo campo para indicar si usa paquete o servicios individuales
    is_package = models.BooleanField(default=False)
    # Relación con servicios (usada cuando is_package=False)
    services = models.ManyToManyField(Service, related_name='events', blank=True)
    # Nueva relación con paquetes (usada cuando is_package=True)
    package = models.ForeignKey(Package, on_delete=models.CASCADE, related_name='events', null=True, blank=True)

    status = models.CharField(max_length=20, choices=STATUS_CHOICES, default='scheduled')
    image = models.URLField(max_length=500, null=True, blank=True)  # URL en vez de archivo
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    company = models.ForeignKey(Company, on_delete=models.CASCADE, related_name='events')

    def __str__(self):
        return self.name
