# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models
from django.conf import settings


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('paginaPrincipal', '0002_auto_20151023_1005'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='usuario',
            name='apellido',
        ),
        migrations.RemoveField(
            model_name='usuario',
            name='nombre',
        ),
        migrations.RemoveField(
            model_name='usuario',
            name='password',
        ),
        migrations.RemoveField(
            model_name='usuario',
            name='privilegio',
        ),
        migrations.RemoveField(
            model_name='usuario',
            name='username',
        ),
        migrations.AddField(
            model_name='usuario',
            name='user',
            field=models.OneToOneField(default=2, to=settings.AUTH_USER_MODEL),
            preserve_default=False,
        ),
    ]
