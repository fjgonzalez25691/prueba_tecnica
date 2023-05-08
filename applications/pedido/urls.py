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
        views.PedidoReporteAPIView.as_view(),
        name='pedido-Listar'
    ),
    path(
        'api/pedido/modificar/<int:pk>/',
        views.PedidoModificarAPIView.as_view(),
        name='pedido-modificar'
    ),
        
]