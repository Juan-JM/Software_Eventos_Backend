from django.db import models
from users.models import User
from services.models import Service 

# Create your models here.
class NotaVenta(models.Model):
    cliente_nombre = models.CharField(max_length=255)
    administrador = models.ForeignKey(User, on_delete=models.CASCADE, related_name='notas_venta')
    fecha = models.DateTimeField(auto_now_add=True)
    total = models.DecimalField(max_digits=10, decimal_places=2, default=0.00)

    def __str__(self):
        return f'Nota #{self.id} - {self.cliente_nombre}'
    
class DetalleNotaVenta(models.Model):
    nota_venta = models.ForeignKey(NotaVenta, on_delete=models.CASCADE, related_name='detalles')
    servicio = models.ForeignKey(Service, on_delete=models.CASCADE)
    cantidad = models.PositiveIntegerField(default=1)
    precio_unitario = models.DecimalField(max_digits=10, decimal_places=2)
    subtotal = models.DecimalField(max_digits=10, decimal_places=2)

    def save(self, *args, **kwargs):
        self.subtotal = self.cantidad * self.precio_unitario
        super().save(*args, **kwargs)

    def __str__(self):
        return f'{self.servicio.name} x{self.cantidad}'