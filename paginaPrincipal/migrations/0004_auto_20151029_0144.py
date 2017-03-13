# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models
import precise_bbcode.fields


class Migration(migrations.Migration):

    dependencies = [
        ('paginaPrincipal', '0003_auto_20151027_1224'),
    ]

    operations = [
        migrations.AddField(
            model_name='reseña',
            name='_contenido_rendered',
            field=models.TextField(blank=True, editable=False, null=True),
        ),
        migrations.AddField(
            model_name='reseña',
            name='contenido',
            field=precise_bbcode.fields.BBCodeTextField(blank=True, no_rendered_field=True),
        ),
    ]
