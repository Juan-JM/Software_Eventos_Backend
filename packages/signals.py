# packages/signals.py
from auditlog.registry import auditlog
from .models import Package

auditlog.register(Package)