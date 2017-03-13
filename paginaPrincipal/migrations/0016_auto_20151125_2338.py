# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models
import datetime


class Migration(migrations.Migration):

    dependencies = [
        ('paginaPrincipal', '0015_auto_20151125_2300'),
    ]

    operations = [
        migrations.AlterField(
            model_name='noticia',
            name='fecha',
            field=models.DateTimeField(default=datetime.datetime(2015, 11, 25, 23, 38, 2, 808867)),
        ),
        migrations.AlterField(
            model_name='reseña',
            name='fecha',
            field=models.DateTimeField(default=datetime.datetime(2015, 11, 25, 23, 38, 2, 804489)),
        ),
    ]
