from django.db import models
from django.conf import settings

# Vamos a importar TimeStampedModel para el registro autmático de fechas.
from model_utils.models import TimeStampedModel

#aplicaciones locales
from applications.articulo.models import Articulo

from . managers import DetallePedidoManager, PedidoManager

class Pedido(TimeStampedModel):
    """Modelo que representa a una pedido"""
    

    fecha_pedido = models.DateTimeField(
        # vamos a dejar este campo por si el pedido 
        # se ha confirmado en una fecha distinta a la de creación
        'Fecha de Venta',
        auto_now_add=True
        
    )
    importe_total_bruto = models.DecimalField(
        'Precio total bruto', 
        max_digits=10, 
        decimal_places=2
    )
    importe_total_neto = models.DecimalField(
        'Precio total neto', 
        max_digits=10, 
        decimal_places=2
    )
    
    objects = PedidoManager()

    class Meta:
        verbose_name = 'Pedido'
        verbose_name_plural = 'Pedidos'
        db_table = 'pedido'
        

    def __str__(self):
        return 'Nº [' + str(self.id) + '] - ' + str(self.fecha_pedido)



class DetallePedido(TimeStampedModel):
    """Modelo que representa a pedido  en detalle"""

    num_pedido = models.ForeignKey(
        Pedido, 
        on_delete=models.CASCADE, 
        verbose_name='Número de pedido',
        related_name='lineaPedido'
        
    )
    articulo = models.ForeignKey(
        Articulo, 
        on_delete=models.CASCADE,
        related_name='articulosEnDetalle'
    )
    cantidad = models.DecimalField(
        # Por si estamos vendiendo cantidades no unitarias,
        # como kilos, metros, etc.
        'Cantidad',
        max_digits=10,
        decimal_places=2        
    )
    
    objects = DetallePedidoManager()
    
    class Meta:
        verbose_name = 'Detalle del pedido'
        verbose_name_plural = 'Detalles de los pedidos'
        db_table = 'detalle_pedido'

    def __str__(self):
        return str(self.num_pedido.id) + ' - ' + str(self.articulo.nombre)
