# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models
import datetime


class Migration(migrations.Migration):

    dependencies = [
        ('paginaPrincipal', '0008_auto_20151111_1927'),
    ]

    operations = [
        migrations.AlterField(
            model_name='reseña',
            name='fecha',
            field=models.DateTimeField(default=datetime.datetime(2015, 11, 25, 9, 55, 31, 704708)),
        ),
    ]
