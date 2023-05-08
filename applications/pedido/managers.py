from django.db import models
from django.contrib.postgres.aggregates import ArrayAgg
#
from django.db.models import Sum, F, Prefetch


class DetallePedidoManager(models.Manager):
    
    def articulos_por_pedido(self, venta_id):
        #Nos devuelve el contendio del detalle de la venta filtrado por 'id'
        consulta = self.filter(
            num_pedido__id=venta_id
        ).order_by('cantidad', 'articulo__id')
        return consulta
    
    def linea_pedido_update(self):
        consulta = self.values(
            "articulo__id",
            "cantidad",
            "articulo__precio_bruto",
            "articulo__impuesto"            
        )
        return consulta
    
        
         
# >>> Pedido.objects.filter(id=3).values("importe_total_bruto", "importe_total_neto", "lineaPedido__num_pedido", #"lineaPedido__cantidad", "lineaPedido__articulo")   
class PedidoManager(models.Manager):
    def linea_pedido(self):
        #Nos devuelve el contendio del detalle de la venta filtrado por 'id'
        consulta = self.values(
            'importe_total_bruto',
            'importe_total_neto',
            'lineaPedido__cantidad',
            'lineaPedido__articulo',        
        )
        return consulta
    
    '''def linea_pedido_agregada(self):
     
        consulta_agregada = self.values(
           "lineaPedido__cantidad",
           "lineaPedido__articulo__nombre",
        )
        lineas_agregadas = []
        for linea_agregada in consulta_agregada:
            lineas_agregadas.append(linea_agregada)
            
        consulta = self.annotate(
            lineas_agregadas,
        ).values(
            "importe_total_bruto",
            "importe_total_neto",
            
        )            
        
        return consulta'''
        
   
        
       
       
