from time import sleep
from django.conf import settings
from django.core.exceptions import ObjectDoesNotExist

from django.shortcuts import render
from django.db import models, transaction
from django.db.models import F
from django.utils import timezone
from rest_framework import generics, status
from rest_framework.response import Response



from rest_framework.generics import(
    ListAPIView,
    CreateAPIView,  
    DestroyAPIView 
      
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
    ProcesoModificarPedidoSerializer,
    ProcesoModificarPedidoSerializerPut,
    PedidoEliminarSerializer,
    ArticulosDetalleSerializer,
    ArticulosDetalleSerializer2, 
    ) 

from .managers import PedidoManager
from .functions import recalcular_importe_pedido

timezone.activate(settings.TIME_ZONE)

class RegistrarPedidoAPIView(CreateAPIView):
    '''
        Vamos a crear el pedido. Nos interesa realmente la cantidad y 
        el artículo de cada línea, porque el resto de campos son calculados o
        se autocompletan.
    '''
    
    serializer_class = ProcesoPedidoSerializer
    
    # Sobrescribimos la función create de CreateAPiView
    def create(self,request, *args, **kwargs):
        my_serializer = ProcesoPedidoSerializer(data=request.data)
        my_serializer.is_valid(raise_exception=True)
        #
        try:
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
                try:
                    art = Articulo.objects.get(id=articulo['pk'])   
                    detalle_pedido =  DetallePedido(
                        num_pedido = pedido,
                        articulo = art,
                        cantidad = articulo['cantidad']
                    )
                    importe_linea = art.precio_bruto*articulo['cantidad']
                    total_importe += importe_linea
                    detalles_pedido.append(detalle_pedido)
                except ObjectDoesNotExist:            
                    raise Exception
                
        except Exception as ex:
            pedido.delete()  #Si el pedido no existe lo borramos.               
            return Response({'msj': 'el articulo no existe'})
                                            
        DetallePedido.objects.bulk_create(detalles_pedido)
                
        recalcular_importe_pedido(pedido.id)
        
        return Response({'msj': 'pedido registrado'})

class PedidoReporteTodosAPIView(ListAPIView):
    serializer_class = PedidoReporteSerializer
    
    queryset = Pedido.objects.all()
    
class PedidoReporteUnoAPIView(ListAPIView):
    ''' Utilizamos esta vista para ver solamente un pedido
        por medio del pk
    '''
    serializer_class = PedidoReporteSerializer
    
    def get_queryset(self):
        # Obtener el ID del pedido a filtrar desde los parámetros de la URL
        pedido_id = self.kwargs['pk']
        
        # Filtrar los pedidos por el ID
        queryset = Pedido.objects.filter(id=pedido_id)
        
        return queryset
    

    

class PedidoModificarAPIView(APIView):
    '''Esta vista la utilizamos para modificar los pedidos
        sobrescribiendo el método put.
    '''
    
    def get_object(self, pk):
        # obtenemos el pedido por el pk de la url        
        return Pedido.objects.get(pk=pk)        
    
    def get(self, request, pk, format=None):
        # obtengo los datos del pedido. De esta forma lo veo en el navegador
        mi_pedido = self.get_object(pk)
        serializer = ProcesoModificarPedidoSerializer(mi_pedido)
        return Response(serializer.data)
    
    def put(self, request, pk, format=None):
        # recuperamos el pedido
        mi_pedido = self.get_object(pk)
        # recuperamos los datos del serializador. Si es válido actualizamos el campo fecha
        # es el único de la tabla pedidos
        my_serializer = ProcesoModificarPedidoSerializerPut(mi_pedido, data=request.data)
        my_serializer.is_valid(raise_exception=True)
        mi_pedido.fecha_pedido = my_serializer.validated_data['fecha_pedido']
        mi_pedido.save()
        
        # Ahora vamos a actualizar los detalles, que vienen como una lista.
        detalles_json = my_serializer.validated_data['detalles']
                
        for detalle_json in detalles_json:
            # recuperamos los datos del artículo que viene en cada línea de pedido
            art = Articulo.objects.get(id=detalle_json['articulo']) 
            # si el artículo que recibimos del serializador está en el detalle actualizamos
            try:
                detalle_pedido = DetallePedido.objects.get(num_pedido=pk, articulo=detalle_json['articulo'])
                detalle_pedido.cantidad = detalle_json['cantidad']
                detalle_pedido.save()
                importe_linea = detalle_json['cantidad']*art.precio_bruto
            # Si no está en la lista, creamos uno nuevo
            except ObjectDoesNotExist:
                detalle_pedido = DetallePedido(
                    num_pedido=mi_pedido,
                    articulo=art,
                    cantidad=detalle_json['cantidad']
                )
                importe_linea = detalle_json['cantidad']*art.precio_bruto
                detalle_pedido.save()
        
        # Recalculamos los importes. Tenemos que recalcular todos porque puede haber artículos
        # No modificados.
        recalcular_importe_pedido(pk)                       
            
        return Response({'msj': 'pedido modificado'})
    
class EliminarPedidoAPIDeleteView(DestroyAPIView):
    serializer_class = PedidoEliminarSerializer
    queryset = Pedido.objects.all()
    lookup_field = 'pk ' # identificador único del pedido a eliminar
    
class EliminarDetallePedidoAPIView(APIView):
    
    def get(self, request, id_pedido, id_articulo):
        try:
            # obtengo los datos del pedido. De esta forma lo veo en el navegador
            
            linea_pedido = DetallePedido.objects.get(
                num_pedido= id_pedido,
                articulo=id_articulo
            )            
            
            serializer = ArticulosDetalleSerializer(linea_pedido)
            return Response(serializer.data)
        
        except ObjectDoesNotExist:
            
             return Response({'msj': 'no existe esta línea de pedido'}, status=status.HTTP_404_NOT_FOUND)
    
    def delete(self, request, id_pedido, id_articulo):
        try:
            linea_pedido = DetallePedido.objects.get(
                num_pedido= id_pedido,
                articulo=id_articulo
            )
            linea_pedido.delete()
            
            recalcular_importe_pedido(id_pedido) 
            
            return Response({'msj': 'linea eliminada'}, status=status.HTTP_204_NO_CONTENT)
        
        except ObjectDoesNotExist:
            return Response({'msj': 'no existe esta línea de pedido'}, status=status.HTTP_404_NOT_FOUND)
        
        
        
        
        
            
       
      
        

    
