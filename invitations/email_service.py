"""
Servicio para envío de emails de invitaciones
"""
from django.core.mail import EmailMultiAlternatives
from django.conf import settings
from .email_templates import generate_invitation_email_content, get_email_subject
import logging

logger = logging.getLogger(__name__)

def send_invitation_email(invitation):
    """
    Envía email de invitación
    """
    try:
        print(f"🚀 === INICIANDO ENVÍO DE EMAIL ===")
        print(f"📧 Destinatario: {invitation.guest_email}")
        print(f"👤 Invitado: {invitation.guest_name}")
        print(f"🎪 Evento: {invitation.event.name}")
        
        # Generar contenido del email
        html_content, text_content = generate_invitation_email_content(invitation)
        
        # Configurar email
        subject = get_email_subject(invitation)
        from_email = settings.DEFAULT_FROM_EMAIL
        to_email = [invitation.guest_email]
        
        print(f"📝 Asunto: {subject}")
        print(f"📤 Desde: {from_email}")
        print(f"📥 Para: {to_email}")
        
        # Crear email
        email = EmailMultiAlternatives(
            subject=subject,
            body=text_content,
            from_email=from_email,
            to=to_email
        )
        
        # Agregar versión HTML
        email.attach_alternative(html_content, "text/html")
        
        # Enviar
        print("📮 Enviando email...")
        email.send()
        
        print(f"✅ Email enviado exitosamente a {invitation.guest_email}")
        return True
        
    except Exception as e:
        error_msg = f"❌ Error enviando email: {str(e)}"
        print(error_msg)
        logger.error(error_msg)
        return False


def test_email_configuration():
    """
    Función para probar la configuración de email
    """
    try:
        from django.core.mail import send_mail
        
        print("🧪 === PROBANDO CONFIGURACIÓN DE EMAIL ===")
        
        # Email de prueba básico
        send_mail(
            subject='🧪 Test de Configuración - PlanitOne',
            message='Este es un email de prueba para verificar la configuración.',
            from_email=settings.DEFAULT_FROM_EMAIL,
            recipient_list=[settings.EMAIL_HOST_USER],
            fail_silently=False,
        )
        
        print("✅ Email de prueba enviado exitosamente")
        print(f"📧 Revisa tu bandeja de entrada: {settings.EMAIL_HOST_USER}")
        return True
        
    except Exception as e:
        print(f"❌ Error en configuración de email: {str(e)}")
        return False


def send_test_invitation_email(guest_email="test@example.com"):
    """
    Envía un email de invitación de prueba
    """
    try:
        from datetime import datetime
        
        print(f"🧪 === ENVIANDO EMAIL DE PRUEBA ===")
        
        # Crear objeto mock para prueba - MANERA CORRECTA
        class MockLocation:
            def __init__(self):
                self.name = "Salón de Eventos Test"
                self.address = "Av. Siempre Viva 123"
        
        class MockEvent:
            def __init__(self):
                self.name = "Evento de Prueba"
                self.location = MockLocation()
                self.start_date = datetime(2025, 7, 15, 18, 0, 0)
        
        class MockInvitation:
            def __init__(self, email):
                self.guest_name = "Usuario de Prueba"
                self.guest_email = email
                self.organizing_company = "PlanitOne Test"
                self.event = MockEvent()
                self.custom_message = "Este es un mensaje de prueba para verificar el formato del email."
                self.assigned_seats_list = ["A-10", "A-11"]
        
        # Crear instancia con el email correcto
        mock_invitation = MockInvitation(guest_email)
        
        result = send_invitation_email(mock_invitation)
        
        if result:
            print(f"✅ Email de prueba enviado a {guest_email}")
        else:
            print(f"❌ Falló el envío del email de prueba")
            
        return result
        
    except Exception as e:
        print(f"❌ Error en email de prueba: {str(e)}")
        import traceback
        print(f"💥 Traceback: {traceback.format_exc()}")
        return False