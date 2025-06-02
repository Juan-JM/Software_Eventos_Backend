# packages/serializers.py
from rest_framework import serializers
from .models import Package
from services.models import Service

class ServiceSimpleSerializer(serializers.ModelSerializer):
    class Meta:
        model = Service
        fields = ('id', 'name')

class PackageSerializer(serializers.ModelSerializer):
    # Para leer locación y servicios como objetos
    services = ServiceSimpleSerializer(many=True, read_only=True)
    # Para escribir con IDs
    service_ids = serializers.PrimaryKeyRelatedField(
        queryset=Service.objects.all(), many=True, source='services', write_only=True
    )

    class Meta:
        model = Package
        fields = [
            'id', 'name', 'description',
            'services', 'service_ids',
            'image', 'company'  # <- Añadido aquí
        ]
        read_only_fields = ['company']
