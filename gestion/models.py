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
        verbose_name_plural = "Gestion des Adhérents"
       
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
        verbose_name_plural = "Gestion des Cartes"
        unique_together = ('statut', 'porteur')
    
    STATUT_CARTE = (
        (1, "Active"),
        (2, "Inactive"),
    )   
            
    code = models.CharField(max_length=100)
    date_activation = models.DateField(verbose_name="Date d'activation",blank=True, null=True)
    date_desactivation = models.DateField(verbose_name="Date de désactivation",blank=True, null=True)
    motif = models.CharField(max_length=100, blank=True, null=True)    
    statut = models.IntegerField(choices=STATUT_CARTE, default=1)
    porteur = models.ForeignKey(Porteur)
    
    def __unicode__(self):
        return self.code + " - (" + unicode(str(self.porteur), "utf8") + ")"
    
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
        verbose_name_plural = "Gestion des Bornes"
        unique_together = ('etat', 'service')
    
    STATUT_BORNE = (
        (1, "Active"),
        (2, "HS"),
        )   
            
    nom = models.CharField(max_length=100)
    lieu = models.CharField(max_length=100)
    adresse_ip = models.GenericIPAddressField(protocol='IPv4')		
    adresse_mac = models.CharField("Adresse MAC", max_length=50, blank=True, null=True)
    etat = models.IntegerField(choices=STATUT_BORNE, default=1)
    service = models.ForeignKey(Service)
    
    def __unicode__(self):
        return self.nom + "( " + unicode(str(self.service), "utf8") + " )"

# Classe qui définit la relation entre un usager et le service    
class SouscriptionSvc(models.Model):
    class Meta:
        verbose_name_plural = "Service(s) souscrit(s)"
        
    service = models.ForeignKey(Service)
    usager = models.ForeignKey(Porteur)
    date_debut = models.DateField("Date de début", null=True, blank=True)
    date_fin = models.DateField("Date de fin", null=True, blank=True)
    date_reglement = models.DateField("Date de réglement", null=True, blank=True)
