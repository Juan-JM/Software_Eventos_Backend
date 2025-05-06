# subscriptions/models.py
from django.db import models
from django.utils import timezone

class Subscription(models.Model):
    STATUS_CHOICES = (
        ('active', 'Activa'),
        ('past_due', 'Pago pendiente'),
        ('canceled', 'Cancelada'),
        ('incomplete', 'Incompleta'),
        ('incomplete_expired', 'Incompleta expirada'),
        ('trialing', 'En periodo de prueba'),
        ('unpaid', 'No pagada'),
    )
    
    PLAN_CHOICES = (
        ('monthly', 'Mensual'),
        ('biannual', 'Semestral'),
        ('annual', 'Anual'),
    )
    
    company = models.ForeignKey('companies.Company', on_delete=models.CASCADE, related_name='subscriptions')
    plan_type = models.CharField(max_length=20, choices=PLAN_CHOICES)
    status = models.CharField(max_length=20, choices=STATUS_CHOICES, default='incomplete')
    start_date = models.DateTimeField(default=timezone.now)
    end_date = models.DateTimeField(null=True, blank=True)
    
    # Campos de Stripe
    stripe_customer_id = models.CharField(max_length=100, null=True, blank=True)
    stripe_subscription_id = models.CharField(max_length=100, null=True, blank=True)
    
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
    class Meta:
        ordering = ['-created_at']
    
    def __str__(self):
        return f"{self.company.name} - {self.get_plan_type_display()} ({self.get_status_display()})"
    
    def is_active(self):
        return self.status == 'active' and self.end_date > timezone.now()
    # Añade este método a tu clase Subscription en models.py
    def days_remaining(self):
        """Calcular días restantes de la suscripción."""
        if not self.is_active() or not self.end_date:
            return 0
    # Calcular diferencia en días
        delta = self.end_date - timezone.now()
        return max(0, delta.days)