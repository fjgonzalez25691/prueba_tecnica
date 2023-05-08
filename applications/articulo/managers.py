from django.db import models
#
from django.db.models import Count

class ArticuloManager(models.Manager):
    def precio_filtrado(self, filter=500):
        resultado = self.filter(
            precio_bruto__gt= filter
        ).order_by('-precio_bruto')
         
        return resultado
    