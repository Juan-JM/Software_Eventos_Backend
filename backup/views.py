import psycopg2
import os
from datetime import datetime
from .models import Backup
from .serializers import BackupSerializer 
from audit.mixins import AuditModelMixin  
from rest_framework import status, permissions, viewsets 
from rest_framework.views import APIView
from rest_framework.response import Response
from django.conf import settings


# Create your views here.
class IsAdmin(permissions.BasePermission):
    def has_permission(self, request, view):
        return request.user.is_authenticated and request.user.user_type == 'admin'

class BackupViewSet(AuditModelMixin, viewsets.ModelViewSet):
    queryset = Backup.objects.all().order_by('-created_at')
    serializer_class = BackupSerializer
    permission_classes = [IsAdmin]

class BackupViewSet(APIView):
    permissions_classes = [IsAdmin]

    def post(self, request):
        pg_host = os.getenv("PGHOST")
        pg_port = os.getenv("PGPORT")
        pg_name = os.getenv("PGDATABASE")
        pg_user = os.getenv("PGUSER")
        pg_password = os.getenv("PGPASSWORD")

        timestamp = datetime.datetime.now().strftime('%Y%m%d_%H%M%S')
        filename = f'backup_{timestamp}.sql'
        backup_dir = os.path.join(settings.BASE_DIR, 'backups')
        os.makedirs(backup_dir, exist_ok=True)
        backup_path = os.path.join(backup_dir, filename)

        try:
            conn = psycopg2.connect(
                host=pg_host,
                port=pg_port,
                name=pg_name,
                user=pg_user,
                password=pg_password
            )
            conn.autocommit = True
            cursor = conn.cursor()

            cursor.execute("SELECT tablename FROM pg_tables WHERE schemaname = 'public';")
            tables = cursor.fetchall()

            with open(backup_path, 'w') as f:

                f.write(f"-- Backup de la base de datos creada el {datetime.now()}\n\n")

                for table in tables:
                    table_name = table[0]
                    f.write(f"-- Table {table_name}\n")

                    cursor.execute(f"SELECT column_name, data_type FROM information_schema.columns WHERE table_name = '{table_name}';")
                    columns = cursor.fetchall()

                    f.write(f"CREATE TABLE IF NOT EXISTS {table_name} (\n")
                    column_defs = []

                    for col in columns:
                        column_defs.append(f"  {col[0]} {col[1]}")
                    f.write(",\n".join(column_defs))
                    f.write("\n) \n\n")

                    cursor.execute(f"SELECT * FROM {table_name};")
                    rows = cursor.fetchall()

                    for row in rows:
                        values = []

                        for val in row:
                            if val is None:
                                values.append("NULL")
                            elif isinstance(val, str):
                                values.append(f"'{val.replace('\'', '\'\'')}'")
                            else:
                                values.append(str(val))

                        f.write(f"INSERT INTO {table_name} VALUES ({', '.join(values)});\n")
                
                    f.write("\n")

            backup = Backup.objects.create(
                file_name=filename,
                backup_type='manual'
            ) 

            serializer = BackupSerializer(backup)
            return Response(serializer.data, status=status.HTTP_201_CREATED)

        except Exception as e:
            print(" Error: {e}")
            return Response({'error': str(e)}, status=status.HTTP_500_INTERNAL_SERVER_ERROR)
                        

