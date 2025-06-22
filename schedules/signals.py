# Schedule/signals.py
from auditlog.registry import auditlog
from .models import Schedule

auditlog.register(Schedule)