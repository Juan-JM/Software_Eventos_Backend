# audit/mixins.py
from audit.models import AuditLog

class AuditModelMixin:
    """
    Mixin para agregar funcionalidad de auditoría a los ModelViewSets
    """
    audit_model_name = None  # Nombre del modelo para la auditoría (se puede sobreescribir)
    audit_name_field = 'name'  # Campo que se usará como identificador en los mensajes (se puede sobreescribir)
    
    def get_audit_model_name(self):
        """Retorna el nombre del modelo para la auditoría"""
        return self.audit_model_name or self.get_serializer().Meta.model.__name__
    
    def get_object_name(self, obj):
        """Obtiene el nombre o identificador principal del objeto para mensajes de auditoría"""
        if hasattr(obj, self.audit_name_field):
            return getattr(obj, self.audit_name_field)
        elif hasattr(obj, 'id'):
            return f"ID: {obj.id}"
        else:
            return "objeto"
    
    def get_changed_fields(self, original_obj, updated_obj):
        """Detecta y formatea los campos que cambiaron entre dos versiones de un objeto"""
        changes = []
        # Obtener todos los campos del modelo
        model_fields = [field.name for field in original_obj._meta.fields]
        
        for field in model_fields:
            # Saltamos campos que no queremos auditar, como timestamps automáticos
            if field in ['created_at', 'updated_at', 'last_login']:
                continue
                
            original_value = getattr(original_obj, field)
            updated_value = getattr(updated_obj, field)
            
            if original_value != updated_value:
                changes.append(f"{field}: {original_value} → {updated_value}")
        
        return changes
    
    def perform_create(self, serializer):
        """Sobrescribe el método para registrar la creación en la bitácora"""
        instance = serializer.save()
        model_name = self.get_audit_model_name()
        obj_name = self.get_object_name(instance)
        
        # Registrar en la bitácora
        AuditLog.objects.create(
            user=self.request.user if hasattr(self.request, 'user') and self.request.user.is_authenticated else None,
            action='CREATE',
            model=model_name,
            object_id=str(instance.id),
            detail=f"{model_name} '{obj_name}' creado",
            ip_address=self.request.META.get('REMOTE_ADDR')
        )
        
        return instance
    
    def perform_update(self, serializer):
        """Sobrescribe el método para registrar la actualización en la bitácora"""
        # Obtener el objeto original antes de actualizarlo
        original_obj = self.get_object()
        
        # Guardar la actualización
        instance = serializer.save()
        
        # Obtener cambios
        changes = self.get_changed_fields(original_obj, instance)
        model_name = self.get_audit_model_name()
        obj_name = self.get_object_name(instance)
        
        # Registrar en la bitácora
        AuditLog.objects.create(
            user=self.request.user if hasattr(self.request, 'user') and self.request.user.is_authenticated else None,
            action='UPDATE',
            model=model_name,
            object_id=str(instance.id),
            detail=f"{model_name} '{obj_name}' actualizado. Cambios: {', '.join(changes)}",
            ip_address=self.request.META.get('REMOTE_ADDR')
        )
        
        return instance
    
    def perform_destroy(self, instance):
        """Sobrescribe el método para registrar la eliminación en la bitácora"""
        model_name = self.get_audit_model_name()
        obj_id = instance.id
        obj_name = self.get_object_name(instance)
        
        # Registrar en la bitácora antes de eliminar
        AuditLog.objects.create(
            user=self.request.user if hasattr(self.request, 'user') and self.request.user.is_authenticated else None,
            action='DELETE',
            model=model_name,
            object_id=str(obj_id),
            detail=f"{model_name} '{obj_name}' eliminado",
            ip_address=self.request.META.get('REMOTE_ADDR')
        )
        
        # Proceder con la eliminación
        instance.delete()