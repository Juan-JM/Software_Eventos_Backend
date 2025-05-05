
"""
import os
import datetime
import subprocess
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status, permissions, viewsets
from .models import Backup
from .serializers import BackupSerializer 
from django.conf import settings
from audit.mixins import AuditModelMixin  

# Create your views here.
class IsAdmin(permissions.BasePermission):
    def has_permission(self, request, view):
        return request.user.is_authenticated and request.user.user_type == 'admin'

class BackupViewSet(AuditModelMixin, viewsets.ModelViewSet):
    queryset = Backup.objects.all().order_by('-created_at')
    serializer_class = BackupSerializer
    permission_classes = [IsAdmin]


class GenerateBackupView(APIView):
    permission_classes = [IsAdmin]

    def post(self, request):
        # aqui creamos el nombre del archivo
        timestamp = datetime.datetime.now().strftime('%Y%m%d_%H%M%S')
        filename = f'backup_{timestamp}.sql'
        backup_dir = os.path.join(settings.BASE_DIR, 'backups')
        os.makedirs(backup_dir, exist_ok=True)
        backup_path = os.path.join(backup_dir, filename)

        # Comando pg_dump
        command = f'pg_dump -U postgres -d planit_one_db -f "{backup_path}"'

        try:
            subprocess.run(command, shell=True, check=True)

            # Se registra en la base de datos
            backup = Backup.objects.create(
                file_name=filename,
                backup_type='manual'
            )

            serializer = BackupSerializer(backup)
            return Response(serializer.data, status=status.HTTP_201_CREATED)

        except subprocess.CalledProcessError as e:
            return Response({'error': 'Backup failed', 'details': str(e)}, status=status.HTTP_500_INTERNAL_SERVER_ERROR)
"""
import os
import datetime
from subprocess import Popen, PIPE
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status, permissions, viewsets
from .models import Backup
from .serializers import BackupSerializer 
from django.conf import settings
from audit.mixins import AuditModelMixin  

# Create your views here.
class IsAdmin(permissions.BasePermission):
    def has_permission(self, request, view):
        return request.user.is_authenticated and request.user.user_type == 'admin'

class BackupViewSet(AuditModelMixin, viewsets.ModelViewSet):
    queryset = Backup.objects.all().order_by('-created_at')
    serializer_class = BackupSerializer
    permission_classes = [IsAdmin]

class GenerateBackupView(APIView):
    permission_classes = [IsAdmin]

    def post(self, request):
        # Crear nombre del archivo
        timestamp = datetime.datetime.now().strftime('%Y%m%d_%H%M%S')
        filename = f'backup_{timestamp}.sql'
        backup_dir = os.path.join(settings.BASE_DIR, 'backups')
        os.makedirs(backup_dir, exist_ok=True)
        backup_path = os.path.join(backup_dir, filename)

        pg_user = os.getenv("PGUSER")
        pg_password = os.getenv("PGPASSWORD")  
        pg_db = os.getenv("PGDATABASE")

        pg_dump_path = os.getenv("PG_DUMP_PATH")

        command = [
            pg_dump_path,
            '-U', pg_user,
            '-d', pg_db,
            '-f', backup_path
        ]

        # Pasar contraseña en entorno del proceso
        env = os.environ.copy()
        env["PGPASSWORD"] = pg_password

        # Ejecutar comando
        process = Popen(command, env=env, stdout=PIPE, stderr=PIPE)
        stdout, stderr = process.communicate()

        if process.returncode == 0:
            # Registrar en base de datos
            backup = Backup.objects.create(
                file_name=filename,
                backup_type='manual'
            )
            serializer = BackupSerializer(backup)
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        else:
            return Response({
                'error': 'Backup failed',
                'details': stderr.decode()
            }, status=status.HTTP_500_INTERNAL_SERVER_ERROR)
