
# backend/planit_one_backend/urls.py
from django.contrib import admin
from django.urls import path, include
from users.token import CustomTokenObtainPairView
from rest_framework_simplejwt.views import TokenRefreshView

urlpatterns = [
    path('admin/', admin.site.urls),
    path('api/token/', CustomTokenObtainPairView.as_view(), name='token_obtain_pair'),
    path('api/token/refresh/', TokenRefreshView.as_view(), name='token_refresh'),
    path('api/users/', include('users.urls')),
    # Añadir la URL para la bitácora
    path('api/audit/', include('audit.urls')),
]
