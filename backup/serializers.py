from rest_framework import serializers
from .models import Backup

class BackupSerializer(serializers.ModelSerializer):
    class Meta:
        model = Backup
        fields = ['id', 'file_name', 'backup_type', 'created_at', 'updated_at']
        read_only_fiels = ['id', 'created_at', 'updated_at']