# -*- coding:utf-8 -*-
from __future__ import unicode_literals

from django.db import models

"""
 / ___| ___  ___| |_(_) ___  _ __  
| |  _ / _ \/ __| __| |/ _ \| '_ \ 
| |_| |  __/\__ \ |_| | (_) | | | |
 \____|\___||___/\__|_|\___/|_| |_|
"""

# Classe de définition d'un usager
class Porteur(models.Model):
    class Meta:
        verbose_name_plural = "Gestion des porteurs"
        
        
    STATUT_SI = (
        (0, "Inactif"),
        (1, "Actif"),
    )
        
    nom = models.CharField(max_length=100)
    prenom = models.CharField(max_length=100)
    date_de_naissance = models.DateField()
    statut = models.BooleanField(choices=STATUT_SI, default=1)
    
    def __unicode__(self):
        return self.nom + ", " + self.prenom 

# Classe décrivant les cartes    
class Carte(models.Model):
    class Meta:
        verbose_name_plural = "Gestion des cartes"
        unique_together = ('statut', 'porteur')
    
    STATUT_CARTE = (
        (1, "Active"),
        (2, "Obsolète"),
        (3, "En opposition"),
    )   
            
    code = models.CharField(max_length=100)
    date_delivrance = models.DateField(blank=True, null=True)
    date_mise_opposition = models.DateField(blank=True, null=True)
    statut = models.IntegerField(choices=STATUT_CARTE, default=1)
    porteur = models.ForeignKey(Porteur)
    
    def __unicode__(self):
        return self.code + "(" + unicode(str(self.porteur), "utf8") + ")"
    
# Classe pour gérer les services
class Service(models.Model):
    class Meta:
        verbose_name_plural = "Gestion des Services"
        
    nom = models.CharField(max_length=100)
    description = models.TextField()

    def __unicode__(self):
        return self.nom

# Classe décrivant les bornes    
class Bornes(models.Model):
    class Meta:
        verbose_name_plural = "Gestion des bornes"
        unique_together = ('etat', 'service')
    
    STATUT_BORNE = (
        (1, "Active"),
        (2, "HS"),
        )   
            
    nom = models.CharField(max_length=100)
    lieu = models.CharField(max_length=100)
    adresse_ip = models.GenericIPAddressField(protocol='IPv4')		
    etat = models.IntegerField(choices=STATUT_BORNE, default=1)
    service = models.ForeignKey(Service)
    
    def __unicode__(self):
        return self.nom + "(" + unicode(str(self.service), "utf8") + ")"

# Classe qui définit la relation entre un usager et le service    
class SouscriptionSvc(models.Model):
    class Meta:
        verbose_name_plural = "Service souscrit"
        
    service = models.ForeignKey(Service)
    usager = models.ForeignKey(Porteur)
    date_fin = models.DateField("Date de fin", null=True, blank=True)
    
    
