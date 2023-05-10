
from .models import DetallePedido, Pedido, Articulo

def recalcular_importe_pedido(pedido):
    pedido = Pedido.objects.get(id=pedido)
    detalles_pedido = DetallePedido.objects.filter(num_pedido=pedido).values('cantidad', 'articulo')
    total_importe = 0
    total_impuestos=0
    
    for detalle in detalles_pedido:
        art = Articulo.objects.get(id=detalle['articulo'])
        importe_linea = detalle['cantidad'] * art.precio_bruto
        impuesto_linea = importe_linea*art.impuesto
        total_importe += importe_linea
        total_impuestos += impuesto_linea
       
       
    pedido.importe_total_bruto = total_importe
    pedido.importe_total_neto = total_importe + total_impuestos
    pedido.save()
    
def verificar_articulo_existe(art):
    if Articulo.objects.filter(id=art).exists():
        pass
    
