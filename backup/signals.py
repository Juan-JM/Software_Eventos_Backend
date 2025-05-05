from auditlog.registry import auditlog
from .models import Backup

auditlog.register(Backup)