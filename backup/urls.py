from django.urls import path, include
from rest_framework.routers import DefaultRouter
from .views import BackupViewSet, GenerateBackupViewSet

router = DefaultRouter()
router.register('', BackupViewSet, basename='backup')

urlpatterns = [
    path('generate/', GenerateBackupViewSet.as_view()),
    path('', include(router.urls)),
]


