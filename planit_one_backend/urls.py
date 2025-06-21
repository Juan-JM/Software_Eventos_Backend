
# backend/planit_one_backend/urls.py
from django.contrib import admin
from django.urls import path, include
from users.token import CustomTokenObtainPairView
from rest_framework_simplejwt.views import TokenRefreshView
# Rodrigo 
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('admin/', admin.site.urls),
    path('api/token/', CustomTokenObtainPairView.as_view(), name='token_obtain_pair'),
    path('api/token/refresh/', TokenRefreshView.as_view(), name='token_refresh'),
    path('api/users/', include('users.urls')),
    # Añadir la URL para la bitácora
    path('api/services/', include('services.urls')),  # Agregar esta línea
    path('api/locations/', include('locations.urls')),  # Agregar esta línea
    path('api/audit/', include('audit.urls')),
    path('api/events/', include('events.urls')),
    path('api/companies/', include('companies.urls')),
    path('api/subscriptions/', include('subscriptions.urls')),
    path('api/backup/', include('backup.urls')),
    path('api/packages/', include('packages.urls')),
    path('api/sales/', include('sales.urls')),
    path('api/schedules/', include('schedules.urls')),  # ← AGREGAR ESTA LÍNEA
    path('api/staff/', include('staff.urls')),        # Nueva ruta
    path('api/tasks/', include('tasks.urls')),        # Nueva ruta

] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
