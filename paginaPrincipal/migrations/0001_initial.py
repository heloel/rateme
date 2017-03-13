# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Categoria',
            fields=[
                ('id', models.AutoField(serialize=False, verbose_name='ID', auto_created=True, primary_key=True)),
                ('nombre', models.CharField(max_length=30)),
            ],
        ),
        migrations.CreateModel(
            name='Noticia',
            fields=[
                ('id', models.AutoField(serialize=False, verbose_name='ID', auto_created=True, primary_key=True)),
                ('titulo', models.CharField(max_length=100)),
                ('fecha', models.DateTimeField()),
                ('categoria', models.ForeignKey(to='paginaPrincipal.Categoria')),
            ],
        ),
        migrations.CreateModel(
            name='Reseña',
            fields=[
                ('id', models.AutoField(serialize=False, verbose_name='ID', auto_created=True, primary_key=True)),
                ('titulo', models.CharField(max_length=50)),
                ('fecha', models.DateTimeField()),
                ('referencia', models.CharField(max_length=100)),
                ('califReview', models.FloatField()),
                ('califGente', models.FloatField()),
                ('categoria', models.ForeignKey(to='paginaPrincipal.Categoria')),
            ],
        ),
        migrations.CreateModel(
            name='Usuario',
            fields=[
                ('id', models.AutoField(serialize=False, verbose_name='ID', auto_created=True, primary_key=True)),
                ('username', models.CharField(max_length=30)),
                ('password', models.CharField(max_length=50)),
                ('fecha', models.DateTimeField()),
                ('privilegio', models.IntegerField()),
                ('nombre', models.CharField(max_length=50)),
                ('apellido', models.CharField(max_length=50)),
                ('categoria', models.ForeignKey(to='paginaPrincipal.Categoria')),
            ],
        ),
        migrations.AddField(
            model_name='reseña',
            name='usuario',
            field=models.ForeignKey(to='paginaPrincipal.Usuario'),
        ),
        migrations.AddField(
            model_name='noticia',
            name='usuario',
            field=models.ForeignKey(to='paginaPrincipal.Usuario'),
        ),
    ]
