from django.contrib import admin

# Register your models here.
from . models import Pedido, DetallePedido

admin.site.register(Pedido)
admin.site.register(DetallePedido)