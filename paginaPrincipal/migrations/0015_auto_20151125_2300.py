# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models
import datetime


class Migration(migrations.Migration):

    dependencies = [
        ('paginaPrincipal', '0014_auto_20151125_2126'),
    ]

    operations = [
        migrations.AlterField(
            model_name='noticia',
            name='fecha',
            field=models.DateTimeField(default=datetime.datetime(2015, 11, 25, 23, 0, 33, 875239)),
        ),
        migrations.AlterField(
            model_name='reseña',
            name='dislike',
            field=models.IntegerField(default=0, blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='reseña',
            name='fecha',
            field=models.DateTimeField(default=datetime.datetime(2015, 11, 25, 23, 0, 33, 871051)),
        ),
        migrations.AlterField(
            model_name='reseña',
            name='like',
            field=models.IntegerField(default=0, blank=True, null=True),
        ),
    ]
