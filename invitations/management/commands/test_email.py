# COPIAR EXACTAMENTE este contenido en invitations/management/commands/test_email.py
"""
Comando para probar el sistema de emails
"""
from django.core.management.base import BaseCommand
from invitations.email_service import test_email_configuration, send_test_invitation_email


class Command(BaseCommand):
    help = 'Prueba la configuración y envío de emails'

    def add_arguments(self, parser):
        parser.add_argument(
            '--email',
            type=str,
            help='Email de destino para la prueba',
            default='planitoneapp@gmail.com'
        )
        parser.add_argument(
            '--test-config',
            action='store_true',
            help='Solo probar configuración básica'
        )

    def handle(self, *args, **options):
        self.stdout.write("🧪 === INICIANDO PRUEBAS DE EMAIL ===\n")
        
        # Prueba 1: Configuración básica
        self.stdout.write("1️⃣ Probando configuración básica...")
        config_ok = test_email_configuration()
        
        if not config_ok:
            self.stdout.write(
                self.style.ERROR("❌ Error en configuración. Revisa tu .env")
            )
            return
        
        self.stdout.write(self.style.SUCCESS("✅ Configuración básica OK\n"))
        
        # Si solo quiere probar configuración, salir aquí
        if options['test_config']:
            return
        
        # Prueba 2: Email de invitación
        email = options['email']
        self.stdout.write(f"2️⃣ Enviando email de invitación de prueba a: {email}")
        
        invitation_ok = send_test_invitation_email(email)
        
        if invitation_ok:
            self.stdout.write(
                self.style.SUCCESS(f"✅ Email de invitación enviado a {email}")
            )
            self.stdout.write("📧 Revisa tu bandeja de entrada")
        else:
            self.stdout.write(
                self.style.ERROR("❌ Error enviando email de invitación")
            )
        
        self.stdout.write("\n🎉 Pruebas completadas")