# users/signals.py
from auditlog.registry import auditlog
from .models import Service

auditlog.register(Service)