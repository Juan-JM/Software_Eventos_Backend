# backend/providers/serializers.py
from rest_framework import serializers
from .models import Provider

class ProviderSerializer(serializers.ModelSerializer):
    class Meta:
        model = Provider
        fields = [
            'id', 'commercial_name', 'contact_name', 'contact_phone', 
            'email', 'website', 'address', 'is_active', 'notes',
            'created_at', 'updated_at'
        ]
        read_only_fields = ['id', 'created_at', 'updated_at']

    def validate_email(self, value):
        """Validar que el email sea único dentro de la empresa"""
        provider_id = self.instance.id if self.instance else None
        company = self.context['request'].user.company
        
        existing = Provider.objects.filter(
            company=company,
            email=value
        ).exclude(id=provider_id)
        
        if existing.exists():
            raise serializers.ValidationError(
                "Ya existe un proveedor con este correo electrónico en tu empresa."
            )
        return value

    def validate_commercial_name(self, value):
        """Validar que el nombre comercial sea único dentro de la empresa"""
        provider_id = self.instance.id if self.instance else None
        company = self.context['request'].user.company
        
        existing = Provider.objects.filter(
            company=company,
            commercial_name__iexact=value
        ).exclude(id=provider_id)
        
        if existing.exists():
            raise serializers.ValidationError(
                "Ya existe un proveedor con este nombre comercial en tu empresa."
            )
        return value

class ProviderCreateUpdateSerializer(ProviderSerializer):
    """Serializer específico para crear y actualizar proveedores"""
    
    def create(self, validated_data):
        # Asignar la empresa del usuario actual
        validated_data['company'] = self.context['request'].user.company
        return super().create(validated_data)

class ProviderListSerializer(serializers.ModelSerializer):
    """Serializer simplificado para listados"""
    
    class Meta:
        model = Provider
        fields = [
            'id', 'commercial_name', 'contact_name', 'contact_phone',
            'email', 'is_active', 'created_at'
        ]