# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models
import datetime


class Migration(migrations.Migration):

    dependencies = [
        ('paginaPrincipal', '0016_auto_20151125_2338'),
    ]

    operations = [
        migrations.AddField(
            model_name='noticia',
            name='borrado',
            field=models.BooleanField(default=False),
        ),
        migrations.AlterField(
            model_name='noticia',
            name='fecha',
            field=models.DateTimeField(default=datetime.datetime(2015, 11, 26, 14, 38, 46, 526404)),
        ),
        migrations.AlterField(
            model_name='reseña',
            name='fecha',
            field=models.DateTimeField(default=datetime.datetime(2015, 11, 26, 14, 38, 46, 525153)),
        ),
    ]
