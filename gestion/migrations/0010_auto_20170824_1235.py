# -*- coding: utf-8 -*-
# Generated by Django 1.9.12 on 2017-08-24 10:35
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('gestion', '0009_auto_20170824_1116'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='bornes',
            options={'verbose_name_plural': 'Gestion des Bornes'},
        ),
        migrations.AlterModelOptions(
            name='carte',
            options={'verbose_name_plural': 'Gestion des Cartes'},
        ),
        migrations.AlterModelOptions(
            name='souscriptionsvc',
            options={'verbose_name_plural': 'Service(s) souscrit(s)'},
        ),
    ]