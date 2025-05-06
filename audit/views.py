from rest_framework import viewsets, permissions, status
from rest_framework.response import Response
from rest_framework.decorators import action
from datetime import datetime, timedelta
from rest_framework.permissions import BasePermission, IsAuthenticated
from django.http import HttpResponse
from django.utils import timezone
from django.db.models import Q
from .models import AuditLog
from .serializers import AuditLogSerializer
from .utils import generate_csv, generate_excel, render_to_pdf
import json

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

    @action(detail=False, methods=['GET'])
    def export_csv(self, request):
        """Exporta los logs filtrados en formato CSV"""
        queryset = self.get_queryset()
        filename = f"auditlog_export_{timezone.now().strftime('%Y%m%d%H%M%S')}.csv"
        return generate_csv(queryset, filename)

    @action(detail=False, methods=['GET'])
    def export_excel(self, request):
        """Exporta los logs filtrados en formato Excel"""
        queryset = self.get_queryset()
        filename = f"auditlog_export_{timezone.now().strftime('%Y%m%d%H%M%S')}.xlsx"
        return generate_excel(queryset, filename)

    @action(detail=False, methods=['GET'])
    def export_pdf(self, request):
        """Exporta los logs filtrados en formato PDF"""
        queryset = self.get_queryset()
        logs_data = self.serializer_class(queryset, many=True).data
        
        # Procesar los filtros para mostrarlos en el PDF
        start_date = request.query_params.get('start_date')
        end_date = request.query_params.get('end_date')
        action_filter = request.query_params.get('action')
        user_id = request.query_params.get('user_id')
        
        user_filter = None
        if user_id:
            from django.contrib.auth import get_user_model
            User = get_user_model()
            try:
                user = User.objects.get(id=user_id)
                user_filter = user.username
            except User.DoesNotExist:
                user_filter = f"ID: {user_id}"
        
        # Formatear la fecha y hora para cada registro
        for log in logs_data:
            if 'timestamp' in log and log['timestamp']:
                # Convertir la cadena ISO a un objeto datetime
                try:
                    dt = datetime.fromisoformat(log['timestamp'].replace('Z', '+00:00'))
                    log['timestamp'] = dt.strftime('%d/%m/%Y %H:%M:%S')
                except (ValueError, AttributeError):
                    pass  # Si hay un error, dejar la fecha como está
        
        # Prepare context for PDF template
        context = {
            'logs': logs_data,
            'start_date': start_date,
            'end_date': end_date,
            'action_filter': action_filter,
            'user_filter': user_filter,
            'generation_date': timezone.now().strftime('%d/%m/%Y %H:%M:%S'),
            'current_year': timezone.now().year,
            'filename': f"auditlog_export_{timezone.now().strftime('%Y%m%d%H%M%S')}.pdf"
        }
        
        return render_to_pdf('audit_log_report.html', context)

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