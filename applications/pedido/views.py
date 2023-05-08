
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
    RetrieveUpdateAPIView,    
)
from rest_framework.views import APIView


from applications.articulo.models import Articulo

from . models import (
    Pedido,
    DetallePedido
)

from .serializers import(
    ProcesoPedidoSerializer,
    PedidoReporteSerializer,
    ProcesoModificarPedidoSerializer
   
    ) 

from .managers import PedidoManager

timezone.activate(settings.TIME_ZONE)

class RegistrarPedidoAPIView(CreateAPIView):
    
    serializer_class = ProcesoPedidoSerializer
    
    # Sobrescribimos la función create de CreateAPiView
    def create(self,request, *args, **kwargs):
        my_serializer = ProcesoPedidoSerializer(data=request.data)
        my_serializer.is_valid(raise_exception=True)
        #
        pedido = Pedido.objects.create(
            fecha_pedido=timezone.now(),
            importe_total_bruto=0,
            importe_total_neto=0
            
        )
        # recuperamos los articulos del pedido
        articulos = my_serializer.validated_data['articulos']
        total_importe = 0
        #
        detalles_pedido = []
        for articulo in articulos:
            art = Articulo.objects.get(id=articulo['pk'])   
            detalle_pedido =  DetallePedido(
                num_pedido = pedido,
                articulo = art,
                cantidad = articulo['cantidad']
            )
            importe_linea = art.precio_bruto*articulo['cantidad']
            total_importe += importe_linea
            detalles_pedido.append(detalle_pedido) 
        pedido.importe_total_bruto = total_importe
        pedido.importe_total_neto = total_importe + (total_importe * art.impuesto)
        pedido.save()
        
        DetallePedido.objects.bulk_create(detalles_pedido)
        
        return Response({'msj': 'pedido registrado'})

class PedidoReporteAPIView(ListAPIView):
    serializer_class = PedidoReporteSerializer
    
    queryset = Pedido.objects.all()

class PedidoModificarAPIView(APIView):
    
    def get_object(self, pk):
        
        return Pedido.objects.get(pk=pk)        
    
    def get(self, request, pk, format=None):
        mi_pedido = self.get_object(pk)
        serializer = ProcesoModificarPedidoSerializer(mi_pedido)
        return Response(serializer.data)
    
    def put(self, request, pk, format=None):
        mi_pedido = self.get_object(pk)
        serializer = ProcesoModificarPedidoSerializer(mi_pedido, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.error, status=status.HTTP_400_BAD_REQUEST)
        

    
