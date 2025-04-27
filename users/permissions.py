# backend/users/permissions.py
from rest_framework import permissions

class IsAdminOrSelf(permissions.BasePermission):
    def has_object_permission(self, request, view, obj):
        return obj == request.user or request.user.is_admin()

class IsAdminOrStaff(permissions.BasePermission):
    def has_permission(self, request, view):
        return request.user.is_authenticated and (request.user.user_type in ['admin', 'staff'])
        
    def has_object_permission(self, request, view, obj):
        return request.user.user_type in ['admin', 'staff']

class IsAdminOrStaffOrReadOnly(permissions.BasePermission):
    def has_permission(self, request, view):
        if request.method in permissions.SAFE_METHODS:
            return True
        return request.user.is_authenticated and (request.user.user_type in ['admin', 'staff'])