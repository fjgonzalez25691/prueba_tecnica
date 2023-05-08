from rest_framework import serializers

from . models import Articulo

class ArticuloSerializer(serializers.ModelSerializer):
    
    
    class Meta:
        model = Articulo
        fields = (
            '__all__' 
        )
        
class ArticuloSerializerReducido(serializers.ModelSerializer):
    
    class Meta:
        model = Articulo
        fields = (
            'id',
            'nombre',
            'descripcion',
            'precio_bruto'            
        )

