from rest_framework import viewsets
from rest_framework.response import Response

from applications.articulo.models import Articulo

from . serializers import ProcesoPedidoSerializer, PedidoReporteSerializer

from . models import Pedido, DetallePedido