# backend/staff/admin.py
from django.contrib import admin
from .models import Staff

@admin.register(Staff)
class StaffAdmin(admin.ModelAdmin):
    list_display = [
        'full_name', 
        'identity_document', 
        'email', 
        'position', 
        'company', 
        'hire_date', 
        'is_active'
    ]
    list_filter = ['position', 'company', 'is_active', 'hire_date']
    search_fields = ['full_name', 'identity_document', 'email']
    readonly_fields = ['created_at', 'updated_at']
    
    fieldsets = (
        ('Información Personal', {
            'fields': ('full_name', 'identity_document', 'birth_date', 'photo')
        }),
        ('Contacto', {
            'fields': ('email', 'phone', 'address')
        }),
        ('Información Laboral', {
            'fields': ('company', 'position', 'hire_date', 'is_active')
        }),
        ('Fechas', {
            'fields': ('created_at', 'updated_at'),
            'classes': ('collapse',)
        }),
    )