# -*- coding: utf-8 -*-
# Generated by Django 1.9.12 on 2017-08-24 08:34
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('gestion', '0007_bornes_adresse_mac'),
    ]

    operations = [
        migrations.AlterField(
            model_name='carte',
            name='statut',
            field=models.IntegerField(choices=[(1, 'Active'), (2, 'Inactive')], default=1),
        ),
    ]
