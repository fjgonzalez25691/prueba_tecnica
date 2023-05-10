#PRUEBA TÉCNICA
#Dependencias
En el archivo requirements/local se encuentran todas las dependencias de la aplicación.

##Migraciones
Se han incluido los archivos de migración, en caso de que necesiten ser consultados.

##Base de datos
Para la prueba, se ha utilizado una base de datos PostgreSQL debido a que la ORM de Django maneja las bases de datos y no es un factor crítico.
Si fuese necesario utilizar MySQL, por favor házmelo saber y se realizará el cambio.

##Secret.json
Suelo subir los proyectos a Github sin estos datos. Una vez que hayan creado la base de datos, el usuario y la contraseña, deben crear el archivo así:
{
"FILENAME": "secret.json",
"SECRET_KEY" : "django-insecure-qv)!fqnbtdj^@muepv7q6h3b^#o-bt7rbg)qf(l!19ld9l6r",
"DB_NAME":"<nombre de su base de datos>" ,
"USER": "<nombre de usuario>",
"PASSWORD": "<su contraseña>"
}

##Configuración
Se ha creado un directorio "settings" con los archivos "base.py", "local.py" y "prod.py" para diferenciar la configuración en local y producción. 
 Para ejecutar el servidor de desarrollo, sólo se debe escribir "python manage.py runserver" ya que se han modificado "manage.py" y "wsgi.py".
En producción, es necesario cambiar ALLOWED_HOSTS y otros datos de STATICFILES dependiendo de si se trabaja con Apache, Nginx, u otro servidor web.

##Estructura
Se han creado dos aplicaciones: "pedidos" y "articulos". En la aplicación "articulos" se encuentra la tabla "articulos" y en "pedidos" dos tablas: "Pedidos" y "DetallePedidos". 
Se adjuntan dos colecciones de Postman, una para "artículos" y otra para "pedidos". Además, se incluye una copia de seguridad de la base de datos con datos para probar la aplicación.
