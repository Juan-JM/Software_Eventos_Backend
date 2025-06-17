from django.shortcuts import render
from rest_framework import viewsets, permissions
from rest_framework.views import APIView
from .models import NotaVenta
from .serializers import NotaVentaSerializer
from audit.mixins import AuditModelMixin
from django.core.mail import EmailMessage
from django.template.loader import render_to_string
from io import BytesIO
import xhtml2pdf.pisa as pisa

#Reportes
from rest_framework.decorators import action
from rest_framework.response import Response
from django.http import HttpResponse
import pandas as pd
from django.utils.dateparse import parse_date
from datetime import datetime, timedelta

# Create your views here.
class IsAdminEmpresa(permissions.BasePermission):
    def has_permission(self, request, view):
        return request.user.is_authenticated and request.user.user_type == 'admin'

def enviar_nota_pdf_por_correo(nota):
        if not nota.correo_cliente:
            return

        html = render_to_string('nota_venta_template.html', {'nota': nota})

        output = BytesIO()
        pisa_status = pisa.CreatePDF(src=html, dest=output)

        if not pisa_status.err:
            output.seek(0)
            email = EmailMessage(
                subject=f'Nota de Venta #{nota.id}',
                body='Adjunto se encuentra su nota de venta en PDF.',
                from_email='noreply@planitone.com',
                to=[nota.correo_cliente],
            )
            email.attach(f'nota_venta_{nota.id}.pdf', output.getvalue(), 'application/pdf')
            email.send()

class NotaVentaViewSet(AuditModelMixin, viewsets.ModelViewSet):
    queryset = NotaVenta.objects.all().order_by('-fecha')
    serializer_class = NotaVentaSerializer
    permission_classes = [IsAdminEmpresa]

    def get_queryset(self):
        return NotaVenta.objects.filter(administrador=self.request.user)

    def perform_create(self, serializer):
        nota = serializer.save(administrador=self.request.user)
        enviar_nota_pdf_por_correo(nota)

class ReporteVentaAPIView(APIView):
    permission_classes = [IsAdminEmpresa]

    def get_queryset(self, request):
        ventas = NotaVenta.objects.all()
        fecha_inicio = request.GET.get('fecha_inicio')
        fecha_fin = request.GET.get('fecha_fin')

        if fecha_inicio:
            ventas = ventas.filter(fecha__gte=parse_date(fecha_inicio))
        if fecha_fin:
            fecha_fin_dt = parse_date(fecha_fin)
            if fecha_fin_dt:
                fecha_fin_dt += timedelta(days=1)
                ventas = ventas.filter(fecha__lt=fecha_fin_dt)

        return ventas

    def get(self, request):
        formato = request.GET.get('formato', 'json')
        queryset = self.get_queryset(request)

        if formato == 'excel':
            return self.reporte_excel(queryset)
        elif formato == 'pdf':
            return self.reporte_pdf(queryset)
        else:
            data = [{
                'cliente': v.cliente_nombre,
                'correo': v.correo_cliente,
                'fecha': v.fecha.strftime('%Y-%m-%d'),
                'total': v.total,
            } for v in queryset]
            return Response(data)

    def reporte_excel(self, queryset):
        df = pd.DataFrame([{
            'cliente': v.cliente_nombre,
            'correo': v.correo_cliente,
            'fecha': v.fecha.strftime('%Y-%m-%d'),
            'total': v.total,
        } for v in queryset])

        output = BytesIO()
        df.to_excel(output, index=False)
        output.seek(0)
        response = HttpResponse(output, content_type='application/vnd.openxmlformats-officedocument.spreadsheetml.sheet')
        response['Content-Disposition'] = 'attachment; filename="reporte_ventas.xlsx"'
        return response

    def reporte_pdf(self, queryset):
        html = render_to_string('reporte_ventas_pdf.html', {'ventas': queryset})
        output = BytesIO()
        pisa.CreatePDF(html, dest=output)
        response = HttpResponse(output.getvalue(), content_type='application/pdf')
        response['Content-Disposition'] = 'attachment; filename="reporte_ventas.pdf"'
        return response



