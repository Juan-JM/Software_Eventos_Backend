# backend/tasks/admin.py
from django.contrib import admin
from .models import Task

@admin.register(Task)
class TaskAdmin(admin.ModelAdmin):
    list_display = [
        'title', 
        'event', 
        'status', 
        'start_datetime', 
        'end_datetime', 
        'company',
        'get_assigned_staff_names'
    ]
    list_filter = ['status', 'company', 'event', 'start_datetime']
    search_fields = ['title', 'description']
    readonly_fields = ['created_at', 'updated_at']
    filter_horizontal = ['assigned_staff']
    
    fieldsets = (
        ('Información Básica', {
            'fields': ('company', 'title', 'description', 'status')
        }),
        ('Fechas y Tiempo', {
            'fields': ('start_datetime', 'end_datetime')
        }),
        ('Asignación', {
            'fields': ('event', 'assigned_staff', 'notes')
        }),
        ('Fechas del Sistema', {
            'fields': ('created_at', 'updated_at'),
            'classes': ('collapse',)
        }),
    )

    def get_assigned_staff_names(self, obj):
        return obj.assigned_staff_names
    get_assigned_staff_names.short_description = 'Personal Asignado'