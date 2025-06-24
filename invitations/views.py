from rest_framework import viewsets, status, permissions
from rest_framework.decorators import action
from rest_framework.response import Response
from django.shortcuts import get_object_or_404
from django.utils import timezone
from .models import Invitation
from .serializers import (
    InvitationSerializer,
    InvitationCreateSerializer,
    InvitationStatusUpdateSerializer,
    InvitationPublicSerializer,
    InvitationSeatManagementSerializer,
    InvitationDetailSerializer
)


class IsCustomerUser(permissions.BasePermission):
    """
    Permiso personalizado que solo permite a usuarios customer
    """
    def has_permission(self, request, view):
        return (
            request.user.is_authenticated and 
            request.user.user_type == 'customer'
        )


class InvitationViewSet(viewsets.ModelViewSet):
    """
    ViewSet para gestionar invitaciones.
    Solo usuarios customer pueden crear/gestionar invitaciones.
    """
    
    serializer_class = InvitationSerializer
    permission_classes = [IsCustomerUser]
    
    def get_queryset(self):
        """
        Los usuarios solo pueden ver invitaciones de sus propios eventos
        """
        user = self.request.user
        # Solo devolver invitaciones de eventos donde el usuario es owner
        return Invitation.objects.filter(
            event__owner=user
        ).select_related('event', 'created_by')
    
    def get_serializer_class(self):
        """
        Usar diferentes serializers según la acción
        """
        if self.action == 'create':
            return InvitationCreateSerializer
        elif self.action == 'update_status':
            return InvitationStatusUpdateSerializer
        elif self.action in ['manage_seats', 'reassign_seats']:
            return InvitationSeatManagementSerializer
        elif self.action == 'retrieve':
            return InvitationDetailSerializer
        return InvitationSerializer
    
    def update(self, request, *args, **kwargs):
        print("🟡 === DEBUGGING UPDATE COMPLETO ===")
        print("🟡 request.data:", request.data)
        print("🟡 kwargs:", kwargs)
        print("🟡 Serializer class:", self.get_serializer_class())
        
        # Obtener la instancia actual
        instance = self.get_object()
        print("🟡 Instance ID:", instance.id)
        print("🟡 Instance assigned_seats actual:", instance.assigned_seats)
        
        # Crear el serializer
        serializer_class = self.get_serializer_class()
        print("🟡 Usando serializer:", serializer_class.__name__)
        
        serializer = serializer_class(instance, data=request.data, partial=True)
        
        print("🟡 === VALIDANDO SERIALIZER ===")
        try:
            is_valid = serializer.is_valid(raise_exception=False)
            print("🟡 Serializer is_valid:", is_valid)
            
            if not is_valid:
                print("🟡 ❌ ERRORES DE VALIDACIÓN:", serializer.errors)
                return Response(serializer.errors, status=400)
            
            print("🟡 ✅ Serializer validated_data:", serializer.validated_data)
            
            # Continuar con el update normal
            return super().update(request, *args, **kwargs)
            
        except Exception as e:
            print(f"🟡 💥 EXCEPCIÓN EN VALIDACIÓN: {e}")
            import traceback
            print(f"🟡 💥 Traceback: {traceback.format_exc()}")
            raise e
    
    def perform_create(self, serializer):
        """
        Crear invitación y manejar asientos
        """
        print("🚨 === DEBUGGING CREATE ===")
        print("🚨 request.data:", self.request.data)
        print("🚨 assigned_seats recibido:", self.request.data.get('assigned_seats'))
        
        invitation = serializer.save(created_by=self.request.user)
        
        # ✅ NUEVO: Solo asignar automáticamente si NO se enviaron asientos específicos
        assigned_seats = self.request.data.get('assigned_seats')
        
        if assigned_seats:
            # Si se enviaron asientos específicos, usarlos
            print(f"✅ Usando asientos enviados: {assigned_seats}")
            if isinstance(assigned_seats, list):
                invitation.assigned_seats = ','.join(assigned_seats)
            else:
                invitation.assigned_seats = assigned_seats
            invitation.save()
            print(f"✅ Asientos guardados: {invitation.assigned_seats}")
        else:
            # Solo asignar automáticamente si no se enviaron asientos específicos
            print("🔄 No se enviaron asientos, asignando automáticamente...")
            try:
                auto_assigned = invitation.assign_seats(number_of_seats=1)
                print(f"✅ Asientos asignados automáticamente: {auto_assigned}")
            except ValueError as e:
                print(f"⚠️ Warning al asignar asientos: {e}")
        
        return invitation
    
    def perform_update(self, serializer):
        """
        Actualizar invitación respetando los asientos enviados
        """
        print("🚨 === DEBUGGING UPDATE ===")
        print("🚨 request.data:", self.request.data)
        print("🚨 assigned_seats recibido:", self.request.data.get('assigned_seats'))
        
        # Obtener asientos antes de guardar
        assigned_seats = self.request.data.get('assigned_seats')
        
        # Guardar la invitación
        invitation = serializer.save()
        
        # Procesar asientos si se enviaron
        if assigned_seats is not None:  # Permitir lista vacía
            print(f"✅ Actualizando asientos: {assigned_seats}")
            if isinstance(assigned_seats, list):
                invitation.assigned_seats = ','.join(assigned_seats)
            else:
                invitation.assigned_seats = assigned_seats
            invitation.save()
            print(f"✅ Asientos actualizados: {invitation.assigned_seats}")
        
        return invitation
    
    @action(detail=True, methods=['patch'])
    def update_status(self, request, pk=None):
        """
        Endpoint para actualizar solo el estado de una invitación
        """
        invitation = self.get_object()
        serializer = InvitationStatusUpdateSerializer(
            invitation, 
            data=request.data, 
            partial=True
        )
        
        if serializer.is_valid():
            # Lógica especial para algunos estados
            new_status = serializer.validated_data.get('status')
            
            if new_status == 'enviada':
                invitation.send_invitation()
            elif new_status == 'confirmada':
                invitation.confirm_invitation()
            elif new_status == 'rechazada':
                invitation.reject_invitation()
            else:
                serializer.save()
            
            return Response(
                InvitationDetailSerializer(invitation).data,
                status=status.HTTP_200_OK
            )
        
        return Response(
            serializer.errors, 
            status=status.HTTP_400_BAD_REQUEST
        )
    
    @action(detail=True, methods=['post'])
    def send_invitation(self, request, pk=None):
        """
        Enviar invitación (marcar como enviada)
        """
        invitation = self.get_object()
        
        if invitation.status != 'pendiente':
            return Response(
                {'error': 'Solo se pueden enviar invitaciones pendientes'},
                status=status.HTTP_400_BAD_REQUEST
            )
        
        invitation.send_invitation()
        
        return Response(
            {
                'message': 'Invitación enviada exitosamente',
                'invitation': InvitationDetailSerializer(invitation).data
            },
            status=status.HTTP_200_OK
        )
    
    @action(detail=True, methods=['get', 'patch'])
    def manage_seats(self, request, pk=None):
        """
        Gestionar asientos de una invitación
        GET: Ver información de asientos
        PATCH: Reasignar asientos
        """
        invitation = self.get_object()
        
        if request.method == 'GET':
            serializer = InvitationSeatManagementSerializer(invitation)
            return Response(serializer.data)
        
        elif request.method == 'PATCH':
            serializer = InvitationSeatManagementSerializer(
                invitation, 
                data=request.data, 
                partial=True
            )
            
            if serializer.is_valid():
                serializer.save()
                return Response(
                    {
                        'message': 'Asientos reasignados exitosamente',
                        'invitation': serializer.data
                    },
                    status=status.HTTP_200_OK
                )
            
            return Response(
                serializer.errors,
                status=status.HTTP_400_BAD_REQUEST
            )
    
    @action(detail=True, methods=['post'])
    def reassign_seats(self, request, pk=None):
        """
        Reasignar asientos automáticamente
        """
        invitation = self.get_object()
        number_of_seats = request.data.get('number_of_seats', 1)
        
        try:
            new_seats = invitation.reassign_seats(number_of_seats)
            return Response(
                {
                    'message': f'Asientos reasignados exitosamente: {", ".join(new_seats)}',
                    'assigned_seats': new_seats,
                    'invitation': InvitationDetailSerializer(invitation).data
                },
                status=status.HTTP_200_OK
            )
        except ValueError as e:
            return Response(
                {'error': str(e)},
                status=status.HTTP_400_BAD_REQUEST
            )
    
    @action(detail=False, methods=['get'])
    def by_event(self, request):
        """
        Obtener todas las invitaciones de un evento específico
        """
        event_id = request.query_params.get('event_id')
        if not event_id:
            return Response(
                {'error': 'Se requiere el parámetro event_id'},
                status=status.HTTP_400_BAD_REQUEST
            )
        
        invitations = self.get_queryset().filter(event_id=event_id)
        serializer = self.get_serializer(invitations, many=True)
        
        return Response(serializer.data)
    
    @action(detail=False, methods=['get'])
    def statistics(self, request):
        """
        Estadísticas de invitaciones del usuario
        """
        queryset = self.get_queryset()
        
        stats = {
            'total_invitations': queryset.count(),
            'by_status': {},
            'by_type': {},
            'seats_info': {
                'total_assigned_seats': 0,
                'events_with_seats': 0,
            },
            'recent_invitations': queryset[:5].values(
                'id', 'guest_name', 'event__name', 'status', 'created_at', 'assigned_seats'
            )
        }
        
        # Estadísticas por estado
        for choice in Invitation.STATUS_CHOICES:
            status_key = choice[0]
            stats['by_status'][status_key] = queryset.filter(
                status=status_key
            ).count()
        
        # Estadísticas por tipo
        for choice in Invitation.INVITATION_TYPES:
            type_key = choice[0]
            stats['by_type'][type_key] = queryset.filter(
                invitation_type=type_key
            ).count()
        
        # Estadísticas de asientos
        invitations_with_seats = queryset.exclude(assigned_seats__isnull=True).exclude(assigned_seats='')
        stats['seats_info']['events_with_seats'] = invitations_with_seats.count()
        
        total_seats = 0
        for invitation in invitations_with_seats:
            if invitation.assigned_seats:
                total_seats += len(invitation.assigned_seats_list)
        stats['seats_info']['total_assigned_seats'] = total_seats
        
        return Response(stats)
    
    @action(detail=False, methods=['get'])
    def event_occupancy(self, request):
        """
        Información de ocupación por evento
        """
        event_id = request.query_params.get('event_id')
        if not event_id:
            return Response(
                {'error': 'Se requiere el parámetro event_id'},
                status=status.HTTP_400_BAD_REQUEST
            )
        
        # Obtener una invitación del evento para calcular ocupación
        sample_invitation = self.get_queryset().filter(event_id=event_id).first()
        
        if not sample_invitation:
            return Response(
                {'error': 'No se encontraron invitaciones para este evento'},
                status=status.HTTP_404_NOT_FOUND
            )
        
        occupancy_info = sample_invitation.get_event_occupancy_info()
        invitations = self.get_queryset().filter(event_id=event_id)
        
        # Información detallada
        detailed_info = {
            **occupancy_info,
            'event_name': sample_invitation.event_name,
            'total_invitations': invitations.count(),
            'invitations_with_seats': invitations.exclude(
                assigned_seats__isnull=True
            ).exclude(assigned_seats='').count(),
            'seat_assignments': []
        }
        
        # Lista de asignaciones de asientos
        for invitation in invitations.exclude(assigned_seats__isnull=True).exclude(assigned_seats=''):
            detailed_info['seat_assignments'].append({
                'guest_name': invitation.guest_name,
                'guest_email': invitation.guest_email,
                'assigned_seats': invitation.assigned_seats_list,
                'status': invitation.status
            })
        
        return Response(detailed_info)


class PublicInvitationView(viewsets.GenericViewSet):
    """
    Vista pública para que los invitados confirmen/rechacen invitaciones
    usando el token de confirmación
    """
    
    serializer_class = InvitationPublicSerializer
    permission_classes = []  # Sin autenticación requerida
    
    def get_object_by_token(self, token):
        """
        Obtener invitación por token de confirmación
        """
        return get_object_or_404(
            Invitation,
            confirmation_token=token
        )
    
    @action(detail=False, methods=['get'], url_path='view/(?P<token>[^/.]+)')
    def view_invitation(self, request, token=None):
        """
        Ver detalles de una invitación usando el token
        """
        invitation = self.get_object_by_token(token)
        serializer = self.get_serializer(invitation)
        
        return Response(serializer.data)
    
    @action(detail=False, methods=['post'], url_path='confirm/(?P<token>[^/.]+)')
    def confirm_invitation(self, request, token=None):
        """
        Confirmar una invitación usando el token
        """
        invitation = self.get_object_by_token(token)
        
        if invitation.status not in ['enviada', 'pendiente']:
            return Response(
                {'error': 'Esta invitación no puede ser confirmada'},
                status=status.HTTP_400_BAD_REQUEST
            )
        
        invitation.confirm_invitation()
        
        return Response(
            {
                'message': 'Invitación confirmada exitosamente',
                'invitation': self.get_serializer(invitation).data
            },
            status=status.HTTP_200_OK
        )
    
    @action(detail=False, methods=['post'], url_path='reject/(?P<token>[^/.]+)')
    def reject_invitation(self, request, token=None):
        """
        Rechazar una invitación usando el token
        """
        invitation = self.get_object_by_token(token)
        
        if invitation.status not in ['enviada', 'pendiente']:
            return Response(
                {'error': 'Esta invitación no puede ser rechazada'},
                status=status.HTTP_400_BAD_REQUEST
            )
        
        invitation.reject_invitation()
        
        return Response(
            {
                'message': 'Invitación rechazada',
                'invitation': self.get_serializer(invitation).data
            },
            status=status.HTTP_200_OK
        )


# Vista adicional para bulk operations
class InvitationBulkViewSet(viewsets.GenericViewSet):
    """
    ViewSet para operaciones en lote con invitaciones
    """
    
    permission_classes = [IsCustomerUser]
    
    def get_queryset(self):
        """Solo invitaciones del usuario"""
        return Invitation.objects.filter(event__owner=self.request.user)
    
    @action(detail=False, methods=['post'])
    def bulk_create(self, request):
        """
        Crear múltiples invitaciones de una vez
        """
        invitations_data = request.data.get('invitations', [])
        
        if not invitations_data:
            return Response(
                {'error': 'Se requiere una lista de invitaciones'},
                status=status.HTTP_400_BAD_REQUEST
            )
        
        created_invitations = []
        errors = []
        
        for invitation_data in invitations_data:
            serializer = InvitationCreateSerializer(
                data=invitation_data,
                context={'request': request}
            )
            
            if serializer.is_valid():
                invitation = serializer.save(created_by=request.user)
                
                # Solo asignar automáticamente si no se especificaron asientos
                if not invitation_data.get('assigned_seats'):
                    try:
                        invitation.assign_seats(number_of_seats=1)
                    except ValueError as e:
                        print(f"⚠️ Warning al asignar asientos para {invitation.guest_name}: {e}")
                
                created_invitations.append(invitation)
            else:
                errors.append({
                    'data': invitation_data,
                    'errors': serializer.errors
                })
        
        return Response({
            'created_count': len(created_invitations),
            'created_invitations': InvitationSerializer(
                created_invitations, 
                many=True
            ).data,
            'errors': errors
        }, status=status.HTTP_201_CREATED if created_invitations else status.HTTP_400_BAD_REQUEST)
    
    @action(detail=False, methods=['post'])
    def bulk_send(self, request):
        """
        Enviar múltiples invitaciones
        """
        invitation_ids = request.data.get('invitation_ids', [])
        
        if not invitation_ids:
            return Response(
                {'error': 'Se requiere una lista de IDs de invitaciones'},
                status=status.HTTP_400_BAD_REQUEST
            )
        
        invitations = self.get_queryset().filter(
            id__in=invitation_ids,
            status='pendiente'
        )
        
        sent_count = 0
        for invitation in invitations:
            invitation.send_invitation()
            sent_count += 1
        
        return Response({
            'message': f'Se enviaron {sent_count} invitaciones',
            'sent_count': sent_count
        })
    
    @action(detail=False, methods=['post'])
    def bulk_reassign_seats(self, request):
        """
        Reasignar asientos para múltiples invitaciones
        """
        invitation_ids = request.data.get('invitation_ids', [])
        
        if not invitation_ids:
            return Response(
                {'error': 'Se requiere una lista de IDs de invitaciones'},
                status=status.HTTP_400_BAD_REQUEST
            )
        
        invitations = self.get_queryset().filter(id__in=invitation_ids)
        
        success_count = 0
        errors = []
        
        for invitation in invitations:
            try:
                invitation.reassign_seats()
                success_count += 1
            except ValueError as e:
                errors.append({
                    'invitation_id': invitation.id,
                    'guest_name': invitation.guest_name,
                    'error': str(e)
                })
        
        return Response({
            'message': f'Se reasignaron asientos para {success_count} invitaciones',
            'success_count': success_count,
            'errors': errors
        })