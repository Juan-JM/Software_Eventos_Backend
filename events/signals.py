# events/signals.py
from auditlog.registry import auditlog
from .models import Event

auditlog.register(Event)