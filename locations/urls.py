from django.urls import path, include
from rest_framework.routers import DefaultRouter
from .views import LocationViewSet

router = DefaultRouter()
router.register('', LocationViewSet, basename='locations')

urlpatterns = [
    path('', include(router.urls)),
]