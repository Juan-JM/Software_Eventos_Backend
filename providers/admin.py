# backend/providers/admin.py
from django.contrib import admin
from .models import Provider

@admin.register(Provider)
class ProviderAdmin(admin.ModelAdmin):
    list_display = [
        'commercial_name', 'contact_name', 'contact_phone', 
        'email', 'is_active', 'company', 'created_at'
    ]
    list_filter = ['is_active', 'company', 'created_at']
    search_fields = ['commercial_name', 'contact_name', 'email']
    readonly_fields = ['created_at', 'updated_at']
    
    fieldsets = (
        ('Información Básica', {
            'fields': ('company', 'commercial_name', 'is_active')
        }),
        ('Información de Contacto', {
            'fields': ('contact_name', 'contact_phone', 'email')
        }),
        ('Información Adicional', {
            'fields': ('website', 'address', 'notes')
        }),
        ('Fechas', {
            'fields': ('created_at', 'updated_at'),
            'classes': ('collapse',)
        }),
    )