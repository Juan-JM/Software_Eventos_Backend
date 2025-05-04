from rest_framework import serializers
from .models import Location

class LocationSerializer(serializers.ModelSerializer):
    class Meta:
        model = Location
        fields = [
            'id', 'name', 'description', 'address', 'capacity', 
            'location_type', 'rental_price', 'price_unit', 'area_sqm', 
            'parking_spaces', 'environment_type', 'extra_hour_cost', 
            'provider', 'created_at', 'updated_at', 'company'  # <- Añadido
        ]
        read_only_fields = ['id', 'created_at', 'updated_at', 'company']