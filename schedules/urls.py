# schedules/urls.py
from django.urls import path, include
from rest_framework.routers import DefaultRouter
from .views import ScheduleViewSet, ActivityViewSet

router = DefaultRouter()
router.register(r'', ScheduleViewSet, basename='schedule')
router.register(r'activities', ActivityViewSet, basename='activity')

urlpatterns = [
    path('', include(router.urls)),
]