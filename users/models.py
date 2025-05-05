# backend/users/models.py
from django.db import models
from django.contrib.auth.models import AbstractUser

class User(AbstractUser):
    USER_TYPE_CHOICES = (
        ('admin', 'Administrador'),
        ('staff', 'Personal'),
        ('customer', 'Cliente'),
    )
    
    user_type = models.CharField(max_length=10, choices=USER_TYPE_CHOICES, default='customer')
    phone = models.CharField(max_length=15, blank=True, null=True)
    address = models.TextField(blank=True, null=True)
    
    class Meta:
        db_table = 'auth_user'
        
    def is_admin(self):
        return self.user_type == 'admin'
        
    def is_staff_member(self):
        return self.user_type == 'staff'
        
    def is_customer(self):
        return self.user_type == 'customer'