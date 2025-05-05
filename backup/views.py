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

        env = os.environ.copy()
        env["PGPASSWORD"] = pg_password

        process = Popen(command, env=env, stdout=PIPE, stderr=PIPE)
        stdout, stderr = process.communicate()

        if process.returncode == 0:
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
