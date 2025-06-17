# schedules/apps.py
from django.apps import AppConfig

class SchedulesConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'schedules'
    verbose_name = 'Cronogramas'