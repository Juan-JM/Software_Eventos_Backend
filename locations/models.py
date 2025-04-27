from django.db import models

class Location(models.Model):
    LOCATION_TYPE_CHOICES = (
        ('salon', 'Salón'),
        ('jardin', 'Jardín'),
        ('playa', 'Playa'),
        ('auditorio', 'Auditorio'),
        ('terraza', 'Terraza'),
        ('otro', 'Otro'),
    )
    
    ENVIRONMENT_TYPE_CHOICES = (
        ('cerrado', 'Cerrado'),
        ('abierto', 'Abierto'),
        ('semiabierto', 'Semiabierto'),
    )
    
    UNIT_CHOICES = (
        ('event', 'Por Evento'),
        ('hour', 'Por Hora'),
        ('day', 'Por Día'),
    )
    
    name = models.CharField(max_length=100, verbose_name="Nombre")
    description = models.TextField(verbose_name="Descripción")
    address = models.TextField(verbose_name="Dirección")
    capacity = models.PositiveIntegerField(verbose_name="Capacidad (personas)")
    location_type = models.CharField(max_length=20, choices=LOCATION_TYPE_CHOICES, verbose_name="Tipo de locación")
    rental_price = models.DecimalField(max_digits=10, decimal_places=2, verbose_name="Precio de alquiler")
    price_unit = models.CharField(max_length=10, choices=UNIT_CHOICES, default='event', verbose_name="Unidad de medida del precio")
    area_sqm = models.PositiveIntegerField(verbose_name="Área (m²)")
    parking_spaces = models.PositiveIntegerField(verbose_name="Estacionamiento (vehículos)")
    environment_type = models.CharField(max_length=15, choices=ENVIRONMENT_TYPE_CHOICES, verbose_name="Tipo de ambiente")
    extra_hour_cost = models.DecimalField(max_digits=8, decimal_places=2, verbose_name="Costo por hora extra")
    provider = models.CharField(max_length=100, blank=True, null=True, verbose_name="Proveedor asociado")
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
    def __str__(self):
        return self.name
        
    class Meta:
        verbose_name = "Locación"
        verbose_name_plural = "Locaciones"