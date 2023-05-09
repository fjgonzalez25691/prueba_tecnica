# django
from django.urls import include, re_path, path

#local
from . import views

app_name = "pedido_app"

urlpatterns = [
    path(
        'api/pedido/crear',
        views.RegistrarPedidoAPIView.as_view(),
        name='pedido-crear'
    ),
    path(
        'api/pedido/listar',
        views.PedidoReporteTodosAPIView.as_view(),
        name='pedido-Listar'
    ),
    path(
        'api/pedido/listar_uno/<pk>',
        views.PedidoReporteUnoAPIView.as_view(),
        name='pedido-Listar-uno'
    ),
    path(
        'api/pedido/modificar/<int:pk>/',
        views.PedidoModificarAPIView.as_view(),
        name='pedido-modificar'
    ),
    path(
        'api/pedido/eliminar/<int:pk>/',
        views.EliminarPedidoAPIDeleteView.as_view(),
        name='pedido-eliminar'
    ),
    
    path(
        'api/pedido/eliminar_linea/<int:id_pedido>/<id_articulo>/',
        views.EliminarDetallePedidoAPIView.as_view(),
        name='pedido-eliminar-linea'
    ),
        
]