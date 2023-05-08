from rest_framework import serializers

from . models import Pedido, DetallePedido
from applications.articulo.models import Articulo


class ArticulosDetalleSerializer(serializers.Serializer):
    """Serializador de Articulos"""
    pk = serializers.IntegerField()
    cantidad = serializers.DecimalField(
        max_digits=10,
        decimal_places=2  
    )

class DetallePedidoSerializer(serializers.ModelSerializer):
    """Serializador de DetallePedido"""
    articulo_nombre = serializers.CharField(source='articulo.nombre')
    precio_bruto = serializers.DecimalField(
        source='articulo.precio_bruto',
        max_digits=10,
        decimal_places=3
        )
    impuestos = serializers.DecimalField(
        source='articulo.impuesto',
        max_digits=3,
        decimal_places=2,
        )
       
    
    class Meta:
        model = DetallePedido
        fields = (
            
            'articulo_nombre',
            'cantidad',
            'precio_bruto',
            'impuestos',
        )
        

    
class ProcesoPedidoSerializer(serializers.Serializer):
    """Serializador para el proceso de venta"""
        
    articulos = ArticulosDetalleSerializer(many=True)
    
    
class PedidoReporteSerializer(serializers.ModelSerializer):
    """Serializador para ver los pedidos"""
    detalles = serializers.SerializerMethodField()
    
    class Meta:
        model = Pedido
        fields = (
            'id',
            'fecha_pedido',
            'importe_total_bruto',
            'importe_total_neto',
            'detalles'   
        )
    def get_detalles(self,obj):
        consulta = DetallePedido.objects.articulos_por_pedido(obj.id)
        articulos_serializados = DetallePedidoSerializer(consulta, many=True).data
        return articulos_serializados

class DetallePedidoSimpleSerializer(serializers.ModelSerializer):
    """Serializador de DetallePedido"""  
       
    
    class Meta:
        model = DetallePedido
        fields = (
            
            'articulo',
            'cantidad',
        )
    
class ProcesoModificarPedidoSerializer(serializers.ModelSerializer):
    """Serializador para el proceso de venta"""
        
    detalles = serializers.SerializerMethodField()
    
    class Meta:
        model = Pedido
        fields = (
            'fecha_pedido',            
            'detalles'
        )
    def get_detalles(self,obj):
        consulta = DetallePedido.objects.articulos_por_pedido(obj.id)
        articulos_serializados = DetallePedidoSimpleSerializer(consulta, many=True).data
        return articulos_serializados

    
    
