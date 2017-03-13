# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models
import datetime


class Migration(migrations.Migration):

    dependencies = [
        ('paginaPrincipal', '0011_auto_20151125_1837'),
    ]

    operations = [
        migrations.CreateModel(
            name='Comentarios',
            fields=[
                ('id', models.AutoField(verbose_name='ID', primary_key=True, serialize=False, auto_created=True)),
                ('contenido', models.TextField(max_length=200)),
            ],
        ),
        migrations.CreateModel(
            name='Likes',
            fields=[
                ('id', models.AutoField(verbose_name='ID', primary_key=True, serialize=False, auto_created=True)),
            ],
        ),
        migrations.AlterField(
            model_name='noticia',
            name='fecha',
            field=models.DateTimeField(default=datetime.datetime(2015, 11, 25, 20, 45, 40, 38190)),
        ),
        migrations.AlterField(
            model_name='reseña',
            name='fecha',
            field=models.DateTimeField(default=datetime.datetime(2015, 11, 25, 20, 45, 40, 37291)),
        ),
        migrations.AlterField(
            model_name='reseña',
            name='like',
            field=models.IntegerField(null=True, blank=True, default=0),
        ),
        migrations.AddField(
            model_name='likes',
            name='reseña',
            field=models.ForeignKey(to='paginaPrincipal.Reseña'),
        ),
        migrations.AddField(
            model_name='likes',
            name='usuario',
            field=models.ForeignKey(to='paginaPrincipal.Usuario'),
        ),
        migrations.AddField(
            model_name='comentarios',
            name='reseña',
            field=models.ForeignKey(to='paginaPrincipal.Reseña'),
        ),
        migrations.AddField(
            model_name='comentarios',
            name='usuario',
            field=models.ForeignKey(to='paginaPrincipal.Usuario'),
        ),
    ]
