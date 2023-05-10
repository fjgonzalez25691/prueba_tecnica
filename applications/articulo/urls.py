# django
from django.urls import include, re_path, path

#local
from . import views

app_name = "articulo_app"

urlpatterns = [
    path(
        'api/articulos/listar',
        views.ListArticulosAPIView.as_view(),
        name='articulos-listar'
    ),
    path(
        'api/articulos/crear',
        views.CrearArticuloAPIView.as_view(),
        name='articulos-crear'
    ),
    path(
        'api/articulos/modificar/<pk>',
        views.ModificarArticuloAPIView.as_view(),
        name='articulos-modificar'
    ),
     path(
        'api/articulos/eliminar/<pk>/',
        views.ArticuloDeleteAPIView.as_view(),
        name='articulos-eliminar'
    ),
    
    
]
