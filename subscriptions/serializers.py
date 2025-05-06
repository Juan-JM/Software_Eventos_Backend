# subscriptions/serializers.py
from rest_framework import serializers
from .models import Subscription

class SubscriptionSerializer(serializers.ModelSerializer):
    days_remaining = serializers.SerializerMethodField()
    is_active = serializers.SerializerMethodField()
    
    class Meta:
        model = Subscription
        fields = [
            'id', 'company', 'plan_type', 'status', 'start_date', 
            'end_date', 'is_active', 'days_remaining', 'created_at'
        ]
        read_only_fields = ['id', 'start_date', 'end_date', 'created_at']
    
    def get_days_remaining(self, obj):
        return obj.days_remaining()
    
    def get_is_active(self, obj):
        return obj.is_active()

class CreateCheckoutSessionSerializer(serializers.Serializer):
    plan_type = serializers.ChoiceField(choices=Subscription.PLAN_CHOICES)
    success_url = serializers.URLField()
    cancel_url = serializers.URLField()
