# packages/models.py
from django.db import models
from services.models import Service
from companies.models import Company

class Package(models.Model):
    name = models.CharField(max_length=200)
    description = models.TextField()
    services = models.ManyToManyField(Service, related_name='packages')
    image = models.URLField(max_length=500, null=True, blank=True)  # URL en vez de archivo
    company = models.ForeignKey(Company, on_delete=models.CASCADE, related_name='packages')

    def __str__(self):
        return self.name
