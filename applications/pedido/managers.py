from django.db import models

from django.db.models import F




class DetallePedidoManager(models.Manager):
    
    def articulos_por_pedido(self, venta_id):
        #Nos devuelve el contendio del detalle de la venta filtrado por 'id'
        consulta = self.filter(
            num_pedido__id=venta_id
        ).order_by('cantidad', 'articulo__id')
        return consulta
    
    def linea_pedido_valorada(self, num_pedido):
        consulta = self.filter(num_pedido = num_pedido).annotate(
            total_linea=F('articulo__precio_bruto')*F('cantidad'),
            total_imp= F('articulo__precio_bruto')*F('cantidad')*(1+F('articulo__impuesto'))
        ).values(      
        
            "articulo__id",
            "cantidad",
            "articulo__precio_bruto",
            "articulo__impuesto" ,
            "total_linea",
            "total_linea_bruta"
        )
        return consulta  
             

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
    
    