# -*- coding: utf-8 -*-
# Generated by Django 1.9.12 on 2017-05-17 09:23
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Carte',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('code', models.CharField(max_length=100)),
                ('date_delivrance', models.DateField()),
                ('date_mise_opposition', models.DateField()),
                ('statut', models.IntegerField(choices=[(1, 'Active'), (2, 'Obsol\xe8te'), (3, 'En opposition')], default=1)),
            ],
            options={
                'verbose_name_plural': 'Gestion des cartes',
            },
        ),
        migrations.CreateModel(
            name='Porteur',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nom', models.CharField(max_length=100)),
                ('prenom', models.CharField(max_length=100)),
                ('date_de_naissance', models.DateField()),
                ('statut', models.BooleanField(choices=[(0, 'Inactif'), (1, 'Actif')], default=1)),
            ],
            options={
                'verbose_name_plural': 'Gestion des porteurs',
            },
        ),
        migrations.AddField(
            model_name='carte',
            name='porteur',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='gestion.Porteur'),
        ),
    ]
