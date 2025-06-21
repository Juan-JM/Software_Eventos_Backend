from rest_framework import serializers
from .models import NotaVenta, DetalleNotaVenta
from services.models import Service
from users.models import User

class DetalleNotaVentaSerializer(serializers.ModelSerializer):
    servicio_nombre = serializers.ReadOnlyField(source='servicio.name')

    class Meta:
        model = DetalleNotaVenta
        fields = ['id', 'servicio', 'servicio_nombre', 'cantidad', 'precio_unitario', 'subtotal']
        read_only_fields = ['subtotal']

class NotaVentaSerializer(serializers.ModelSerializer):
    detalles = DetalleNotaVentaSerializer(many=True)
    administrador_nombre = serializers.ReadOnlyField(source='administrador.username')

    class Meta:
        model = NotaVenta
        fields = ['id', 'cliente_nombre', 'administrador', 'administrador_nombre', 'fecha', 'total', 'detalles']
        read_only_fields = ['fecha', 'total', 'administrador']

    def create(self, validated_data):
        detalles_data = validated_data.pop('detalles')
        nota = NotaVenta.objects.create(**validated_data)
        total = 0

        for item in detalles_data:
            subtotal = item['cantidad'] * item['precio_unitario']
            total += subtotal
            DetalleNotaVenta.objects.create(nota_venta=nota, subtotal=subtotal, **item)

        nota.total = total
        nota.save()
        return nota
    
