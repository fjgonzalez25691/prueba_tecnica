# Generated by Django 4.2.1 on 2023-05-04 14:47

from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone
import model_utils.fields


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('articulo', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Pedido',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('created', model_utils.fields.AutoCreatedField(default=django.utils.timezone.now, editable=False, verbose_name='created')),
                ('modified', model_utils.fields.AutoLastModifiedField(default=django.utils.timezone.now, editable=False, verbose_name='modified')),
                ('fecha_pedido', models.DateTimeField(auto_now_add=True, verbose_name='Fecha de Venta')),
                ('precio_total_bruto', models.DecimalField(decimal_places=2, max_digits=10, verbose_name='Precio total bruto')),
                ('precio_total_neto', models.DecimalField(decimal_places=2, max_digits=10, verbose_name='Precio total neto')),
            ],
            options={
                'verbose_name': 'Pedido',
                'verbose_name_plural': 'Pedidos',
                'db_table': 'pedido',
            },
        ),
        migrations.CreateModel(
            name='DetallePedido',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('created', model_utils.fields.AutoCreatedField(default=django.utils.timezone.now, editable=False, verbose_name='created')),
                ('modified', model_utils.fields.AutoLastModifiedField(default=django.utils.timezone.now, editable=False, verbose_name='modified')),
                ('cantidad', models.DecimalField(decimal_places=2, max_digits=10, verbose_name='Cantidad')),
                ('articulo', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='articulo.articulo')),
                ('num_pedido', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='pedido.pedido', verbose_name='Número de pedido')),
            ],
            options={
                'verbose_name': 'Detalle del pedido',
                'verbose_name_plural': 'Detalles de los pedidos',
                'db_table': 'detalle_pedido',
            },
        ),
    ]
