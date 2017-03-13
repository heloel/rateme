# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models
import datetime


class Migration(migrations.Migration):

    dependencies = [
        ('paginaPrincipal', '0007_auto_20151029_1414'),
    ]

    operations = [
        migrations.AddField(
            model_name='reseña',
            name='dislike',
            field=models.IntegerField(blank=True, null=True),
        ),
        migrations.AddField(
            model_name='reseña',
            name='like',
            field=models.IntegerField(blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='reseña',
            name='fecha',
            field=models.DateTimeField(default=datetime.datetime(2015, 11, 11, 19, 27, 41, 937770)),
        ),
    ]
