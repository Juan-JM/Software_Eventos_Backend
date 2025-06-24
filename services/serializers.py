#services.py/serializers
from rest_framework import serializers
from .models import Service
from providers.serializers import ProviderSerializer

class ServiceSerializer(serializers.ModelSerializer):
    provider_detail = ProviderSerializer(source='provider', read_only=True)
    
    class Meta:
        model = Service
        fields = [
            'id', 'name', 'description', 'base_price',
            'unit_measure', 'standard_duration', 'provider', 'provider_detail',
            'created_at', 'updated_at', 'company'
        ]
        read_only_fields = ['id', 'created_at', 'updated_at', 'company']