# -*- coding: utf-8 -*-
# Generated by Django 1.9.12 on 2017-09-12 12:00
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('gestion', '0016_auto_20170912_1353'),
    ]

    operations = [
        migrations.AddField(
            model_name='bornes',
            name='adresse_postale',
            field=models.TextField(blank=True, null=True),
        ),
        migrations.AddField(
            model_name='bornes',
            name='telephone',
            field=models.CharField(blank=True, max_length=100, null=True),
        ),
    ]