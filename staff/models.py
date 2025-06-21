# backend/staff/models.py
from django.db import models
from companies.models import Company
import os

def staff_photo_path(instance, filename):
    """Función para generar la ruta de la foto del personal"""
    # Obtener la extensión del archivo
    ext = filename.split('.')[-1]
    # Crear un nombre único usando el ID de la empresa y el nombre del personal
    filename = f"staff_{instance.company.id}_{instance.id}_{instance.full_name.replace(' ', '_')}.{ext}"
    return os.path.join('staff_photos/', filename)

class Staff(models.Model):
    POSITION_CHOICES = [
        ('tecnico', 'Técnico'),
        ('logistica', 'Logística'),
        ('seguridad', 'Seguridad'),
        ('coordinador', 'Coordinador'),
        ('catering', 'Catering'),
        ('audiovisual', 'Audiovisual'),
        ('limpieza', 'Limpieza'),
        ('decoracion', 'Decoración'),
        ('otro', 'Otro'),
    ]

    company = models.ForeignKey(
        Company,
        on_delete=models.CASCADE,
        related_name='staff_members',
        help_text="La empresa a la que pertenece este personal"
    )
    full_name = models.CharField(max_length=255, verbose_name="Nombre completo")
    identity_document = models.CharField(
        max_length=50, 
        verbose_name="Documento de identidad",
        help_text="DNI, cédula, pasaporte, etc."
    )
    email = models.EmailField(verbose_name="Correo electrónico")
    phone = models.CharField(max_length=20, verbose_name="Teléfono")
    address = models.TextField(verbose_name="Dirección")
    birth_date = models.DateField(verbose_name="Fecha de nacimiento")
    position = models.CharField(
        max_length=20,
        choices=POSITION_CHOICES,
        verbose_name="Puesto o rol"
    )
    photo = models.ImageField(
        upload_to=staff_photo_path,
        blank=True,
        null=True,
        verbose_name="Foto"
    )
    hire_date = models.DateField(verbose_name="Fecha de ingreso")
    is_active = models.BooleanField(default=True, verbose_name="Activo")
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    class Meta:
        db_table = 'staff'
        verbose_name = 'Personal'
        verbose_name_plural = 'Personal'
        ordering = ['full_name']
        # Evitar duplicados de documento por empresa
        unique_together = ['company', 'identity_document']

    def __str__(self):
        return f"{self.full_name} - {self.get_position_display()}"

    @property
    def age(self):
        """Calcula la edad del personal"""
        from datetime import date
        today = date.today()
        return today.year - self.birth_date.year - ((today.month, today.day) < (self.birth_date.month, self.birth_date.day))