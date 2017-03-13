# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models
import datetime


class Migration(migrations.Migration):

    dependencies = [
        ('paginaPrincipal', '0009_auto_20151125_0955'),
    ]

    operations = [
        migrations.AddField(
            model_name='reseña',
            name='borrado',
            field=models.BooleanField(default=False),
        ),
        migrations.AlterField(
            model_name='reseña',
            name='fecha',
            field=models.DateTimeField(default=datetime.datetime(2015, 11, 25, 10, 5, 54, 829340)),
        ),
    ]
