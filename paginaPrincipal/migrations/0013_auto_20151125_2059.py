# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models
import datetime


class Migration(migrations.Migration):

    dependencies = [
        ('paginaPrincipal', '0012_auto_20151125_2045'),
    ]

    operations = [
        migrations.AlterField(
            model_name='noticia',
            name='fecha',
            field=models.DateTimeField(default=datetime.datetime(2015, 11, 25, 20, 59, 48, 690738)),
        ),
        migrations.AlterField(
            model_name='reseña',
            name='fecha',
            field=models.DateTimeField(default=datetime.datetime(2015, 11, 25, 20, 59, 48, 689841)),
        ),
        migrations.AlterField(
            model_name='reseña',
            name='like',
            field=models.IntegerField(blank=True, null=True),
        ),
    ]
