from django.db import models
from django.contrib.auth import get_user_model

# Create your models here.
class Backup(models.Model):
    BACKUP_TYPE_CHOYCES = [
        ('manual', 'Manual'),
        ('automatic', 'Automatico'),
    ]

    file_name = models.CharField(max_length=255, verbose_name='Nombre del archivo')
    backup_type = models.CharField(max_length=12, choices=BACKUP_TYPE_CHOYCES)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return f"{self.file_name}({self.backup_type})"

