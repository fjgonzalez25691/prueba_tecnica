from django.shortcuts import render


from rest_framework.generics import(
    ListAPIView,
    CreateAPIView,
    RetrieveUpdateAPIView,
    RetrieveUpdateDestroyAPIView
)

from . models import Articulo
# Serializadores
from . serializers import ArticuloSerializer, ArticuloSerializerReducido

class ListArticulosAPIView(ListAPIView):
    queryset = Articulo.objects.all().order_by('id')
    serializer_class = ArticuloSerializer
    
class CrearArticuloAPIView(CreateAPIView):
    queryset = Articulo.objects.all()
    serializer_class = ArticuloSerializer
    
class ModificarArticuloAPIView(RetrieveUpdateAPIView):
    queryset = Articulo.objects.all()
    serializer_class = ArticuloSerializer
    lookup_field = 'pk'
    
class ArticuloDeleteAPIView(RetrieveUpdateDestroyAPIView):
    queryset = Articulo.objects.all()
    serializer_class = ArticuloSerializer
    
    
class ArticuloListarPrecioFiltradoAPIView(ListAPIView):
    queryset = Articulo.objects.precio_filtrado()
    serializer_class = ArticuloSerializerReducido
    
    

    

