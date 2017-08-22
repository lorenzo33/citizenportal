# -*- coding:utf-8 -*-
from django.contrib import admin
from gestion.models import Porteur, Carte, Service, SouscriptionSvc, Bornes

# Sous-formulaire pour afficher les services   
class SouscriptionSvcInLine(admin.TabularInline):
    model = SouscriptionSvc
    verbose_name_plural = 'Service souscrit'
    extra = 2
    
# Formulaire pour la gestion des cartes
class CarteAdmin(admin.ModelAdmin):
    list_display = ['code', 'statut', 'porteur']
    
    fieldsets = [
        ('Généralités', {'fields': ['code', 'statut', 'porteur']}),        
    ]    
    Inlines = [SouscriptionSvcInLine, ]

#Formulaire pour la gestion des usager
class PorteurAdmin(admin.ModelAdmin):
    list_display = ['nom', 'prenom', 'statut']
    
    fieldsets = [
        ('Généralités', {'fields': ['nom', 'prenom', 'date_de_naissance', 'statut']}),        
    ]
    inlines = [SouscriptionSvcInLine, ] 

#Formulaire pour la gestion des bornes
class BornesAdmin(admin.ModelAdmin):
    list_display = ['nom', 'lieu', 'etat']
    
    fieldsets = [
        ('Généralités', {'fields': ['nom', 'lieu', 'etat', 'service']}),        
    ]
    inlines = [SouscriptionSvcInLine, ]
       

# Register your models here.
admin.site.register(Porteur, PorteurAdmin)
admin.site.register(Carte, CarteAdmin)
admin.site.register(Service)
admin.site.register(Bornes)

