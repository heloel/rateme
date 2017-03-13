# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models
import datetime


class Migration(migrations.Migration):

    dependencies = [
        ('paginaPrincipal', '0004_auto_20151029_0144'),
    ]

    operations = [
        migrations.AlterField(
            model_name='reseña',
            name='califGente',
            field=models.FloatField(null=True, blank=True),
        ),
        migrations.AlterField(
            model_name='reseña',
            name='fecha',
            field=models.DateTimeField(default=datetime.datetime(2015, 10, 29, 2, 25, 5, 293846)),
        ),
    ]
