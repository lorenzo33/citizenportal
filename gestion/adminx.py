# -*- coding: utf8 -*-
import xadmin
from xadmin.layout import Tab, TabHolder, Fieldset, PrependedText, Row
from xadmin.plugins.inline import Inline
from easy_select2 import select2_modelform

from gestion.models import Porteur, Carte, Service, Bornes, SouscriptionSvc


class SouscriptionSvcInLine(object):
    model = SouscriptionSvc
    style = 'table'
    extra = 3

class PorteurAdmin(object):
    
    list_display = ('nom','prenom','statut')
    search_fields = ('nom',)
    list_filter = ('statut',)
    model_icon = 'fa fa-user'
    
    inlines = (SouscriptionSvcInLine,)
    
    form_layout = (
        TabHolder(
            Tab('Général',
                Fieldset('Généralités','nom','prenom','date_de_naissance','statut'),                         
                Inline(SouscriptionSvc),
            ),
                              
        ),                      
    )
    
class CarteAdmin(object):
    model_icon = 'fa fa-address-card-o '
    
class ServiceAdmin(object):
    model_icon = 'fa fa-handshake-o'
    
class BornesAdmin(object):
    model_icon = 'fa fa-podcast'

###########################################################
# Affichage des formulaires dans l'ordre défini
###########################################################
xadmin.site.register(Porteur, PorteurAdmin)
xadmin.site.register(Carte, CarteAdmin)
xadmin.site.register(Service, ServiceAdmin)
xadmin.site.register(Bornes, BornesAdmin)
