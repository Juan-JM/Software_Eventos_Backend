from django.urls import path, include
from rest_framework.routers import DefaultRouter
from .views import NotaVentaViewSet

router = DefaultRouter()
router.register(r'notas-venta', NotaVentaViewSet, basename='nota-venta')

urlpatterns = [
    path('', include(router.urls)),
]