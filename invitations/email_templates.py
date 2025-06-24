# COPIAR EXACTAMENTE este contenido en invitations/email_templates.py
"""
Templates para emails de invitaciones
"""

def generate_invitation_email_content(invitation):
    """
    Genera el contenido HTML y texto del email de invitación
    """
    
    # Datos de la invitación
    guest_name = invitation.guest_name
    company_name = invitation.organizing_company
    event_name = invitation.event.name
    event_location = invitation.event.location.name if invitation.event.location else "Ubicación por confirmar"
    event_address = invitation.event.location.address if invitation.event.location else ""
    
    # Formatear fecha
    try:
        event_date = invitation.event.start_date.strftime("%d de %B de %Y")
        event_time = invitation.event.start_date.strftime("%H:%M")
    except:
        event_date = "Por confirmar"
        event_time = "Por confirmar"
    
    # Asientos asignados
    assigned_seats = ", ".join(invitation.assigned_seats_list) if invitation.assigned_seats_list else "Por asignar"
    
    # Mensaje personalizado
    custom_message = invitation.custom_message or ""
    
    # Template HTML
    html_content = f"""
    <!DOCTYPE html>
    <html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            body {{ 
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; 
                line-height: 1.6; 
                color: #333; 
                margin: 0; 
                padding: 0;
                background-color: #f5f5f5;
            }}
            .container {{ 
                max-width: 600px; 
                margin: 0 auto; 
                background-color: white;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            }}
            .header {{ 
                background: linear-gradient(135deg, #667eea 0%, #764ba2 100%); 
                color: white; 
                padding: 40px 30px; 
                text-align: center;
            }}
            .header h1 {{
                margin: 0;
                font-size: 28px;
                font-weight: 700;
            }}
            .content {{ 
                padding: 40px 30px; 
            }}
            .event-details {{ 
                background: #f8f9fa; 
                padding: 25px; 
                margin: 25px 0; 
                border-radius: 12px;
                border: 1px solid #e9ecef;
            }}
            .seat-info {{ 
                background: #d4edda; 
                padding: 20px; 
                border-radius: 8px; 
                margin: 20px 0;
                border: 1px solid #c3e6cb;
                text-align: center;
            }}
            .footer {{ 
                text-align: center; 
                padding: 30px; 
                background-color: #f8f9fa;
                border-top: 1px solid #e9ecef;
            }}
        </style>
    </head>
    <body>
        <div class="container">
            <div class="header">
                <h1>🎉 ¡Estás Invitado!</h1>
                <p>Querido/a {guest_name}</p>
            </div>
            
            <div class="content">
                <div class="intro">
                    La empresa <strong>"{company_name}"</strong> te invita a festejar:
                </div>
                
                <div class="event-details">
                    <h2>📅 {event_name}</h2>
                    <p><strong>📍 Ubicación:</strong> {event_location}</p>
                    <p><strong>🏠 Dirección:</strong> {event_address}</p>
                    <p><strong>🗓️ Fecha:</strong> {event_date}</p>
                    <p><strong>🕐 Hora:</strong> {event_time}</p>
                </div>
                
                <div class="seat-info">
                    <h3>🪑 Tus Asientos Asignados</h3>
                    <p>{assigned_seats}</p>
                </div>
                
                {f'<div style="background: #fff3cd; padding: 20px; border-radius: 8px; margin: 20px 0;"><h3>💌 Mensaje Especial</h3><p>{custom_message}</p></div>' if custom_message else ''}
                
                <div style="text-align: center; margin: 30px 0;">
                    <p style="font-size: 18px; font-weight: 600;">¡Esperamos verte allí!</p>
                </div>
            </div>
            
            <div class="footer">
                <p><strong>Organizado por {company_name}</strong></p>
                <p><small>Este es un email automático, por favor no responder directamente.</small></p>
            </div>
        </div>
    </body>
    </html>
    """
    
    # Template de texto plano (backup)
    text_content = f"""
    🎉 ¡Estás Invitado!
    
    Querido/a {guest_name},
    
    La empresa "{company_name}" te invita a festejar:
    
    📅 EVENTO: {event_name}
    📍 UBICACIÓN: {event_location}
    🏠 DIRECCIÓN: {event_address}
    🗓️ FECHA: {event_date}
    🕐 HORA: {event_time}
    
    🪑 TUS ASIENTOS: {assigned_seats}
    
    {f'💌 MENSAJE ESPECIAL: {custom_message}' if custom_message else ''}
    
    ¡Esperamos verte allí!
    
    Organizado por {company_name}
    """
    
    return html_content, text_content


def get_email_subject(invitation):
    """Genera el asunto del email"""
    return f"🎉 Invitación: {invitation.event.name} | {invitation.organizing_company}"