
from django.conf import settings

from django.shortcuts import render
from django.db import models, transaction
from django.db.models import F
from django.utils import timezone
from rest_framework import generics, status
from rest_framework.response import Response



from rest_framework.generics import(
    ListAPIView,
    CreateAPIView, 
    RetrieveAPIView,
    UpdateAPIView,
    RetrieveUpdateAPIView     
)



from applications.articulo.models import Articulo

from . models import (
    Pedido,
    DetallePedido
)

from .serializers import(
    ProcesoPedidoSerializer,
    PedidoReporteSerializer,
    PedidoUpdateSerializer,
    ProcesoModificarPedidoSerializer
    ) 

from .managers import PedidoManager
class PedidoModificarAPIView(UpdateAPIView):
    serializer_class = ProcesoModificarPedidoSerializer
    queryset = Pedido.objects.all()
    
    def put(self, request, *args, **kwargs):
        #recuperar pedido a modificar
        pedido = self.get.object()
        
        #Crear el serializador con el pedido a modificar y los datos enviados.
        serializer = ProcesoModificarPedidoSerializer(pedido, data=request.data)
        serializer.is_valid(raise_exception=True)
        
        pedido.importe_total_bruto = 0
        pedido.importe_total_neto = 0
        detalles_pedido = []
        
        articulos = serializer.validated_data['articulos']
        
        #actualizar detalles del pedido:
        for articulo in articulos:
            detalle_pedido = DetallePedido.objects.get(num_pedido=pedido, articulo=articulo['pk'])
            detalle_pedido.cantidad = articulo['cantidad']
            importe_linea = detalle_pedido.articulo.precio_bruto * articulo['cantidad']
            pedido.importe_total_bruto += importe_linea
            detalles_pedido.append(detalle_pedido)
            
        # Guardar los cambios
        pedido.importe_total_neto = pedido.importe_total_bruto + (pedido.importe_total_bruto * detalle_pedido.articulo.impuesto)
        pedido.save()
        DetallePedido.objects.bulk_update(detalles_pedido, ['cantidad'])
        
        return Response({'msj': 'Pedido modificado'})



    
