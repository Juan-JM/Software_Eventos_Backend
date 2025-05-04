from rest_framework import serializers
from .models import Service

class ServiceSerializer(serializers.ModelSerializer):
    class Meta:
        model = Service
        fields = [
            'id', 'name', 'description', 'base_price',
            'unit_measure', 'standard_duration', 'provider',
            'created_at', 'updated_at', 'company'  #  AÑADIDO
        ]
        read_only_fields = ['id', 'created_at', 'updated_at', 'company']
