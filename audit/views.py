# from rest_framework import viewsets, permissions
# from .models import AuditLog
# from .serializers import AuditLogSerializer
# from rest_framework.decorators import action, permission_classes
# from rest_framework.response import Response
# from rest_framework import status
# from datetime import datetime, timedelta
# from rest_framework.permissions import IsAuthenticated
# from rest_framework.permissions import BasePermission

# # class IsAdminUser(permissions.BasePermission):
# #     def has_permission(self, request, view):
# #         return request.user and request.user.user_type == 'admin'
# class IsSuperAdminOrCompanyAdmin(BasePermission):
#     def has_permission(self, request, view):
#         return request.user and request.user.is_authenticated and (
#             request.user.is_superadmin() or request.user.is_company_admin()
#         )
    
# class AuditLogViewSet(viewsets.ReadOnlyModelViewSet):
#     """Endpoint para ver los registros de auditoría (solo para admins)"""
#     queryset = AuditLog.objects.all().order_by('-timestamp')
#     serializer_class = AuditLogSerializer
#     permission_classes = [IsSuperAdminOrCompanyAdmin]

#     def get_queryset(self):
#         queryset = super().get_queryset()

#         # Si es admin de empresa, filtrar solo por su empresa
#         user = self.request.user
#         if user.is_company_admin():
#             queryset = queryset.filter(user__company=user.company)

#         # Filtros adicionales
#         action = self.request.query_params.get('action')
#         model = self.request.query_params.get('model')
#         user_id = self.request.query_params.get('user_id')
#         start_date = self.request.query_params.get('start_date')
#         end_date = self.request.query_params.get('end_date')

#         if action:
#             queryset = queryset.filter(action=action)
#         if model:
#             queryset = queryset.filter(model=model)
#         if user_id:
#             queryset = queryset.filter(user_id=user_id)
#         if start_date:
#             try:
#                 start = datetime.strptime(start_date, "%Y-%m-%d")
#                 queryset = queryset.filter(timestamp__date__gte=start.date())
#             except ValueError:
#                 pass 
#         if end_date:
#             try:
#                 end = datetime.strptime(end_date, "%Y-%m-%d")
#                 end_next_day = end + timedelta(days=1)
#                 queryset = queryset.filter(timestamp__date__lt=end_next_day.date())
#             except ValueError:
#                 pass 

#         return queryset
    
#     @action(detail=False, methods=['POST'], permission_classes=[IsAuthenticated])
#     def custom_log(self, request):
#         """Endpoint para crear registros de auditoría (permitido para cualquier usuario autenticado)"""
#         action = request.data.get('action')
#         model = request.data.get('model')
#         detail = request.data.get('detail')
#         object_id = request.data.get('object_id')
        
#         if not action or not model:
#             return Response(
#                 {"error": "Se requieren los campos 'action' y 'model'"},
#                 status=status.HTTP_400_BAD_REQUEST
#             )
            
#         try:
#             log = AuditLog.objects.create(
#                 user=request.user,
#                 action=action,
#                 model=model,
#                 object_id=object_id,
#                 detail=detail,
#                 ip_address=self.get_client_ip(request)
#             )
#             serializer = self.get_serializer(log)
#             return Response(serializer.data, status=status.HTTP_201_CREATED)
#         except Exception as e:
#             return Response({"error": str(e)}, status=status.HTTP_400_BAD_REQUEST)
    
#     def get_client_ip(self, request):
#         x_forwarded_for = request.META.get('HTTP_X_FORWARDED_FOR')
#         if x_forwarded_for:
#             ip = x_forwarded_for.split(',')[0]
#         else:
#             ip = request.META.get('REMOTE_ADDR')
#         return ip
from rest_framework import viewsets, permissions, status
from rest_framework.response import Response
from rest_framework.decorators import action
from datetime import datetime, timedelta
from rest_framework.permissions import BasePermission, IsAuthenticated
from .models import AuditLog
from .serializers import AuditLogSerializer

class IsSuperAdminOrCompanyAdmin(BasePermission):
    def has_permission(self, request, view):
        user = request.user
        return user.is_authenticated and (user.user_type == 'superadmin' or user.user_type == 'admin')

class AuditLogViewSet(viewsets.ReadOnlyModelViewSet):
    queryset = AuditLog.objects.all().order_by('-timestamp')
    serializer_class = AuditLogSerializer
    permission_classes = [IsSuperAdminOrCompanyAdmin]

    def get_queryset(self):
        user = self.request.user
        queryset = super().get_queryset()

        if user.is_company_admin():  # Si es admin de una empresa (no superadmin)
            queryset = queryset.filter(user__company=user.company)

        # Filtros adicionales
        action = self.request.query_params.get('action')
        model = self.request.query_params.get('model')
        user_id = self.request.query_params.get('user_id')
        start_date = self.request.query_params.get('start_date')
        end_date = self.request.query_params.get('end_date')

        if action:
            queryset = queryset.filter(action=action)
        if model:
            queryset = queryset.filter(model=model)
        if user_id:
            queryset = queryset.filter(user_id=user_id)
        if start_date:
            try:
                queryset = queryset.filter(timestamp__date__gte=start_date)
            except:
                pass
        if end_date:
            try:
                queryset = queryset.filter(timestamp__date__lte=end_date)
            except:
                pass

        return queryset


    @action(detail=False, methods=['POST'], permission_classes=[IsAuthenticated])
    def custom_log(self, request):
        action = request.data.get('action')
        model = request.data.get('model')
        detail = request.data.get('detail')
        object_id = request.data.get('object_id')

        if not action or not model:
            return Response(
                {"error": "Se requieren los campos 'action' y 'model'"},
                status=status.HTTP_400_BAD_REQUEST
            )

        log = AuditLog.objects.create(
            user=request.user,
            action=action,
            model=model,
            object_id=object_id,
            detail=detail,
            ip_address=self.get_client_ip(request)
        )
        return Response(self.get_serializer(log).data, status=status.HTTP_201_CREATED)

    def get_client_ip(self, request):
        x_forwarded_for = request.META.get('HTTP_X_FORWARDED_FOR')
        return x_forwarded_for.split(',')[0] if x_forwarded_for else request.META.get('REMOTE_ADDR')
