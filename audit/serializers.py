# backend/audit/serializers.py
from rest_framework import serializers
# from auditlog.models import LogEntry
from .models import AuditLog  # Si creaste el modelo personalizado

# Si creaste el modelo personalizado:
class AuditLogSerializer(serializers.ModelSerializer):
    user_name = serializers.SerializerMethodField()
    
    class Meta:
        model = AuditLog
        fields = ['id', 'timestamp', 'user', 'user_name', 'action', 'model', 'object_id', 'detail', 'ip_address']
        
    def get_user_name(self, obj):
        if obj.user:
            return obj.user.username
        return None