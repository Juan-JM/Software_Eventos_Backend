# backend/audit/utils.py
import csv
import io
import pandas as pd
from django.http import HttpResponse
from django.template.loader import get_template
from xhtml2pdf import pisa
from django.conf import settings
import os

def generate_csv(queryset, filename):
    """Genera un archivo CSV a partir del queryset"""
    response = HttpResponse(content_type='text/csv')
    response['Content-Disposition'] = f'attachment; filename="{filename}"'
    
    writer = csv.writer(response)
    # Encabezados
    writer.writerow(['Fecha/Hora', 'Usuario', 'Acción', 'Modelo', 'Objeto ID', 'IP', 'Detalles'])
    
    # Datos
    for log in queryset:
        writer.writerow([
            log.timestamp.strftime('%Y-%m-%d %H:%M:%S'),
            log.user.username if log.user else 'Sistema',
            log.action,
            log.model,
            log.object_id,
            log.ip_address,
            log.detail
        ])
    
    return response

def generate_excel(queryset, filename):
    """Genera un archivo Excel a partir del queryset"""
    # Crear un buffer en memoria
    buffer = io.BytesIO()
    
    # Crear un dataframe con los datos
    data = []
    for log in queryset:
        data.append({
            'Fecha/Hora': log.timestamp.strftime('%Y-%m-%d %H:%M:%S'),
            'Usuario': log.user.username if log.user else 'Sistema',
            'Acción': log.action,
            'Modelo': log.model,
            'Objeto ID': log.object_id,
            'IP': log.ip_address,
            'Detalles': log.detail
        })
    
    # Crear el Excel
    df = pd.DataFrame(data)
    with pd.ExcelWriter(buffer, engine='openpyxl') as writer:
        df.to_excel(writer, index=False, sheet_name='Bitácora')
        
        # Ajustar anchos de columnas
        worksheet = writer.sheets['Bitácora']
        for i, col in enumerate(df.columns):
            # Encontrar el ancho máximo en la columna
            max_length = max(df[col].astype(str).map(len).max(), len(col))
            # Añadir un poco de espacio extra
            adjusted_width = (max_length + 2)
            # Establecer el ancho de la columna
            worksheet.column_dimensions[chr(65 + i)].width = adjusted_width
    
    buffer.seek(0)
    
    # Crear la respuesta con el archivo
    response = HttpResponse(
        buffer.getvalue(),
        content_type='application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'
    )
    response['Content-Disposition'] = f'attachment; filename="{filename}"'
    
    return response

def render_to_pdf(template_src, context_dict={}):
    """Renderiza un template HTML a PDF"""
    template = get_template(template_src)
    html = template.render(context_dict)
    result = io.BytesIO()
    pdf = pisa.pisaDocument(io.BytesIO(html.encode("UTF-8")), result)
    
    if not pdf.err:
        response = HttpResponse(result.getvalue(), content_type='application/pdf')
        response['Content-Disposition'] = f'attachment; filename="{context_dict.get("filename", "report.pdf")}"'
        return response
    
    return HttpResponse('Error al generar el PDF', status=400)