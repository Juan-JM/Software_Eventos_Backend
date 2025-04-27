# backend/users/signals.py
from auditlog.registry import auditlog
from .models import Location

auditlog.register(Location)