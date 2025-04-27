# backend/audit/views.py
from rest_framework import viewsets, permissions
# from auditlog.models import LogEntry
# from .serializers import LogEntrySerializer
from .models import AuditLog  # Si creaste el modelo personalizado
from .serializers import AuditLogSerializer  # Si creaste el modelo personalizado
from rest_framework.decorators import action
from rest_framework.response import Response
from rest_framework import status

class IsAdminUser(permissions.BasePermission):
    def has_permission(self, request, view):
        return request.user and request.user.user_type == 'admin'

# class LogEntryViewSet(viewsets.ReadOnlyModelViewSet):
#     """Endpoint para ver los registros de auditlog (solo para admins)"""
#     queryset = LogEntry.objects.all().order_by('-timestamp')
#     serializer_class = LogEntrySerializer
#     permission_classes = [IsAdminUser]
    
#     def get_queryset(self):
#         queryset = super().get_queryset()
        
#         # Filtros opcionales
#         action = self.request.query_params.get('action')
#         content_type = self.request.query_params.get('content_type')
#         start_date = self.request.query_params.get('start_date')
#         end_date = self.request.query_params.get('end_date')
        
#         if action:
#             queryset = queryset.filter(action=action)
#         if content_type:
#             queryset = queryset.filter(content_type__model=content_type)
#         if start_date:
#             queryset = queryset.filter(timestamp__gte=start_date)
#         if end_date:
#             queryset = queryset.filter(timestamp__lte=end_date)
            
#         return queryset

# Si creaste el modelo personalizado:
class AuditLogViewSet(viewsets.ReadOnlyModelViewSet):
    """Endpoint para ver los registros de auditoría personalizados (solo para admins)"""
    queryset = AuditLog.objects.all()
    serializer_class = AuditLogSerializer
    permission_classes = [IsAdminUser]
    
    def get_queryset(self):
        queryset = super().get_queryset()
        
        # Filtros opcionales
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
            # queryset = queryset.filter(timestamp__gte=start_date)
            queryset = queryset.filter(timestamp__date__gte=start_date)
        if end_date:
            # queryset = queryset.filter(timestamp__lte=end_date)
            end = datetime.strptime(end_date, "%Y-%m-%d") + timedelta(days=1)
            queryset = queryset.filter(timestamp__lt=end)

            
        return queryset
    
    @action(detail=False, methods=['POST'])
    def custom_log(self, request):
        """Endpoint para crear registros de auditoría personalizados"""
        if not request.user.is_authenticated:
            return Response({"error": "No autenticado"}, status=status.HTTP_401_UNAUTHORIZED)
            
        action = request.data.get('action')
        model = request.data.get('model')
        detail = request.data.get('detail')
        object_id = request.data.get('object_id')
        
        if not action or not model:
            return Response({"error": "Se requieren los campos 'action' y 'model'"}, status=status.HTTP_400_BAD_REQUEST)
            
        try:
            log = AuditLog.objects.create(
                user=request.user,
                action=action,
                model=model,
                object_id=object_id,
                detail=detail,
                ip_address=request.META.get('REMOTE_ADDR')
            )
            serializer = self.get_serializer(log)
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        except Exception as e:
            return Response({"error": str(e)}, status=status.HTTP_400_BAD_REQUEST)