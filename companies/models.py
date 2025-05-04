from django.db import models

class Company(models.Model):
    name = models.CharField(max_length=100, unique=True)
    description = models.TextField(blank=True, null=True)
    # website = models.URLField(blank=True, null=True)
    # logo_url = models.URLField(blank=True, null=True)
    website = models.CharField(blank=True, null=True)
    logo_url = models.CharField(blank=True, null=True)
    is_active = models.BooleanField(default=True)
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.name
