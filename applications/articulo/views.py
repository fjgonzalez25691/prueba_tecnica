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
    '''Vista para listar artículos'''
    queryset = Articulo.objects.all().order_by('id')
    serializer_class = ArticuloSerializer
    
class CrearArticuloAPIView(CreateAPIView):
    '''Vista para crear artículos'''
    queryset = Articulo.objects.all()
    serializer_class = ArticuloSerializer
    
class ModificarArticuloAPIView(RetrieveUpdateAPIView):
    '''Vista para modificar artículos'''
    queryset = Articulo.objects.all()
    serializer_class = ArticuloSerializer
    lookup_field = 'pk'
    
class ArticuloDeleteAPIView(RetrieveUpdateDestroyAPIView):
    '''vista para borrar artículos'''
    queryset = Articulo.objects.all()
    serializer_class = ArticuloSerializer
    
    

    

    

