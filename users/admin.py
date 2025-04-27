# backend/users/admin.py
from django.contrib import admin
from django.contrib.auth import get_user_model

User = get_user_model()

@admin.register(User)
class UserAdmin(admin.ModelAdmin):
    list_display = ['username', 'email', 'first_name', 'last_name', 'user_type']
    list_filter = ['user_type']
    search_fields = ['username', 'email', 'first_name', 'last_name']