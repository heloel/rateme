# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models
from django.conf import settings
import datetime


class Migration(migrations.Migration):

    dependencies = [
        ('paginaPrincipal', '0013_auto_20151125_2059'),
    ]

    operations = [
        migrations.AlterField(
            model_name='likes',
            name='usuario',
            field=models.ForeignKey(to=settings.AUTH_USER_MODEL),
        ),
        migrations.AlterField(
            model_name='noticia',
            name='fecha',
            field=models.DateTimeField(default=datetime.datetime(2015, 11, 25, 21, 26, 54, 671832)),
        ),
        migrations.AlterField(
            model_name='reseña',
            name='fecha',
            field=models.DateTimeField(default=datetime.datetime(2015, 11, 25, 21, 26, 54, 670937)),
        ),
    ]
