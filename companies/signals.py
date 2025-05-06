# companies/signals.py
from auditlog.registry import auditlog
from .models import Company

auditlog.register(Company)