from django.db import models
from django.conf import settings

# Vamos a importar TimeStampedModel para el registro autmático de fechas.
from model_utils.models import TimeStampedModel
#



class Articulo(TimeStampedModel):
    "Este modelo representa a un artículo"
    
    referencia = models.CharField(
        # Esta referencia no se si tiene que ser númerica
        'Referencia',
        max_length=15
    )
    nombre = models.CharField(
        'Nombre',
        max_length=100
    )
    descripcion = models.TextField(
        'Descripcion artículo',
        blank=True
    )
    precio_bruto = models.DecimalField(
        'Precio sin impuestos',
        max_digits=10,
        decimal_places=3
    )
    impuesto =  models.DecimalField(
        max_digits=3,
        decimal_places=2,
        default=0.21
    )
    

    
    class Meta:
        verbose_name = 'Artículo'
        verbose_name_plural = 'Artículos'
        db_table = 'articulo'
        
    def __str__(self):
        return self.nombre    
    

    
    
