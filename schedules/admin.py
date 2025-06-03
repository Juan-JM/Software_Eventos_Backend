# schedules/admin.py
from django.contrib import admin
from .models import Schedule, Activity

class ActivityInline(admin.TabularInline):
    model = Activity
    extra = 0
    fields = ('title', 'start_time', 'end_time', 'status')
    readonly_fields = ('duration_formatted',)

@admin.register(Schedule)
class ScheduleAdmin(admin.ModelAdmin):
    list_display = ('id', 'event_name', 'event_date', 'start_time', 'end_time', 'total_activities', 'company')
    list_filter = ('company', 'event__start_date', 'created_at')
    search_fields = ('event__name', 'company__name')
    readonly_fields = ('created_at', 'updated_at', 'total_activities', 'completed_activities')
    inlines = [ActivityInline]
    
    fieldsets = (
        ('Información del Cronograma', {
            'fields': ('event', 'start_time', 'end_time', 'company')
        }),
        ('Estadísticas', {
            'fields': ('total_activities', 'completed_activities'),
            'classes': ('collapse',)
        }),
        ('Información del Sistema', {
            'fields': ('created_at', 'updated_at'),
            'classes': ('collapse',)
        }),
    )

@admin.register(Activity)
class ActivityAdmin(admin.ModelAdmin):
    list_display = ('title', 'schedule', 'start_time', 'end_time', 'duration_formatted', 'status')
    list_filter = ('status', 'schedule__event__start_date', 'schedule__company')
    search_fields = ('title', 'description', 'schedule__event__name')
    readonly_fields = ('created_at', 'updated_at', 'duration_minutes', 'duration_formatted')
    
    fieldsets = (
        ('Información de la Actividad', {
            'fields': ('schedule', 'title', 'description')
        }),
        ('Horario', {
            'fields': ('start_time', 'end_time', 'duration_formatted')
        }),
        ('Estado', {
            'fields': ('status',)
        }),
        ('Información del Sistema', {
            'fields': ('created_at', 'updated_at'),
            'classes': ('collapse',)
        }),
    )