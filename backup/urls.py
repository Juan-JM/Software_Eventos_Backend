from django.urls import path, include
from rest_framework.routers import DefaultRouter
from .views import BackupViewSet, GenerateBackupView

router = DefaultRouter()
router.register('', BackupViewSet, basename='backup')

urlpatterns = [
    path('generate/', GenerateBackupView.as_view()),
    path('', include(router.urls)),
]


