# backend/staff/serializers.py
from rest_framework import serializers
from .models import Staff

class StaffSerializer(serializers.ModelSerializer):
    age = serializers.ReadOnlyField()
    position_display = serializers.CharField(source='get_position_display', read_only=True)
    
    class Meta:
        model = Staff
        fields = [
            'id',
            'company',
            'full_name',
            'identity_document',
            'email',
            'phone',
            'address',
            'birth_date',
            'position',
            'position_display',
            'photo',
            'hire_date',
            'is_active',
            'age',
            'created_at',
            'updated_at'
        ]
        read_only_fields = ['id', 'created_at', 'updated_at', 'age', 'company']  # company es read-only

    def validate_identity_document(self, value):
        """Validar que el documento no esté duplicado en la misma empresa"""
        company = None
        
        # Si estamos editando, obtener la empresa del usuario del contexto
        request = self.context.get('request')
        if request and hasattr(request, 'user'):
            company = request.user.company
        
        if company:
            existing = Staff.objects.filter(
                company=company,
                identity_document=value
            ).exclude(id=self.instance.id if self.instance else None)
            
            if existing.exists():
                raise serializers.ValidationError(
                    "Ya existe personal con este documento de identidad en la empresa."
                )
        return value

    def validate_email(self, value):
        """Validar que el email no esté duplicado en la misma empresa"""
        company = None
        
        # Si estamos editando, obtener la empresa del usuario del contexto
        request = self.context.get('request')
        if request and hasattr(request, 'user'):
            company = request.user.company
        
        if company:
            existing = Staff.objects.filter(
                company=company,
                email=value
            ).exclude(id=self.instance.id if self.instance else None)
            
            if existing.exists():
                raise serializers.ValidationError(
                    "Ya existe personal con este correo electrónico en la empresa."
                )
        return value

class StaffListSerializer(serializers.ModelSerializer):
    """Serializer simplificado para listas"""
    position_display = serializers.CharField(source='get_position_display', read_only=True)
    age = serializers.ReadOnlyField()
    
    class Meta:
        model = Staff
        fields = [
            'id',
            'full_name',
            'identity_document',
            'email',
            'phone',
            'position',
            'position_display',
            'hire_date',
            'is_active',
            'age'
        ]