# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models
import datetime
import precise_bbcode.fields


class Migration(migrations.Migration):

    dependencies = [
        ('paginaPrincipal', '0010_auto_20151125_1005'),
    ]

    operations = [
        migrations.AddField(
            model_name='noticia',
            name='_contenido_rendered',
            field=models.TextField(editable=False, blank=True, null=True),
        ),
        migrations.AddField(
            model_name='noticia',
            name='contenido',
            field=precise_bbcode.fields.BBCodeTextField(blank=True, no_rendered_field=True),
        ),
        migrations.AddField(
            model_name='noticia',
            name='resumen',
            field=models.CharField(max_length=140, blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='reseña',
            name='fecha',
            field=models.DateTimeField(default=datetime.datetime(2015, 11, 25, 18, 37, 37, 299553)),
        ),
    ]
