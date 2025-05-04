from rest_framework import serializers
from .models import Company
from users.models import User
class CompanySerializer(serializers.ModelSerializer):
    class Meta:
        model = Company
        fields = [
            'id', 'name', 'description', 'website',
            'logo_url', 'is_active', 'created_at'
        ]
        read_only_fields = ['id', 'created_at']

class CompanyCreateWithAdminSerializer(serializers.ModelSerializer):
    admin_username = serializers.CharField(write_only=True)
    admin_email = serializers.EmailField(write_only=True)
    admin_password = serializers.CharField(write_only=True)

    class Meta:
        model = Company
        fields = [
            'id', 'name', 'description', 'website', 'logo_url', 'is_active', 'created_at',
            'admin_username', 'admin_email', 'admin_password'
        ]
        read_only_fields = ['id', 'created_at']

    def create(self, validated_data):
        username = validated_data.pop('admin_username')
        email = validated_data.pop('admin_email')
        password = validated_data.pop('admin_password')

        company = Company.objects.create(**validated_data)

        User.objects.create_user(
            username=username,
            email=email,
            password=password,
            user_type='admin',
            company=company
        )

        return company