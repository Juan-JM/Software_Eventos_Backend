# backend/providers/models.py
from django.db import models
from companies.models import Company
from auditlog.registry import auditlog

class Provider(models.Model):
    company = models.ForeignKey(
        Company,
        on_delete=models.CASCADE,
        related_name='providers',
        help_text="La empresa a la que pertenece este proveedor"
    )
    commercial_name = models.CharField(
        max_length=200,
        verbose_name="Nombre comercial",
        help_text="Nombre comercial del proveedor"
    )
    contact_name = models.CharField(
        max_length=200,
        verbose_name="Nombre del contacto principal",
        help_text="Nombre de la persona de contacto principal"
    )
    contact_phone = models.CharField(
        max_length=20,
        verbose_name="Teléfono de contacto",
        help_text="Teléfono de contacto del proveedor"
    )
    email = models.EmailField(
        verbose_name="Correo electrónico",
        help_text="Correo electrónico del proveedor"
    )
    website = models.URLField(
        blank=True,
        null=True,
        verbose_name="Sitio web",
        help_text="Sitio web del proveedor (opcional)"
    )
    address = models.TextField(
        blank=True,
        null=True,
        verbose_name="Dirección física",
        help_text="Dirección física del proveedor (opcional)"
    )
    is_active = models.BooleanField(
        default=True,
        verbose_name="Activo",
        help_text="Indica si el proveedor está activo"
    )
    notes = models.TextField(
        blank=True,
        null=True,
        verbose_name="Notas",
        help_text="Notas adicionales sobre el proveedor"
    )
    created_at = models.DateTimeField(
        auto_now_add=True,
        verbose_name="Fecha de creación"
    )
    updated_at = models.DateTimeField(
        auto_now=True,
        verbose_name="Fecha de actualización"
    )

    class Meta:
        db_table = 'providers'
        verbose_name = 'Proveedor'
        verbose_name_plural = 'Proveedores'
        ordering = ['commercial_name']
        unique_together = ['company', 'commercial_name']

    def __str__(self):
        return f"{self.commercial_name} - {self.contact_name}"

# Registrar para auditlog
auditlog.register(Provider)