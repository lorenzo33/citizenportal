# -*- coding: utf8 -*-
import xadmin
from xadmin.layout import Tab, TabHolder, Fieldset, PrependedText, Row
from xadmin.plugins.inline import Inline
from xadmin import views
from easy_select2 import select2_modelform
from django.forms import PasswordInput, ModelForm

from gestion.models import Porteur, Carte, Service, Bornes, SouscriptionSvc

class StatsView(views.CommAdminView):

    def get(self, request, *args, **kwargs):
        liste_des_souscriptions = SouscriptionSvc.objects.all().order_by('service')
        context = {
                   'liste_des_souscriptions': liste_des_souscriptions,
        }
        return self.template_response('stats/stats.html', context)

xadmin.site.register_view(r'stats/$', StatsView, name='stats')
    

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
                Fieldset('Généralités','nom','prenom','adresse_postale', 'telephone','date_de_naissance','statut'),                         
                
            ),
            Tab('Accès web',
                Fieldset('Informations de connexion','identifiant','mot_de_passe','adresse_mail'),
            ),
            Tab('Services',
                Inline(SouscriptionSvc),  
            ), 
        ),                      
    )
    
class CarteAdmin(object):
    list_display = ('code','statut','porteur')
    search_fields = ('code',)


    model_icon = 'fa fa-address-card-o '
    
class ServiceAdmin(object):
    model_icon = 'fa fa-handshake-o'
    
class BornesAdmin(object):

    list_display = ('nom','lieu','adresse_ip','etat','service')
    search_fields = ('nom')
    model_icon = 'fa fa-podcast'

###########################################################
# Affichage des formulaires dans l'ordre défini
###########################################################
xadmin.site.register(Porteur, PorteurAdmin)
xadmin.site.register(Carte, CarteAdmin)
xadmin.site.register(Service, ServiceAdmin)
xadmin.site.register(Bornes, BornesAdmin)
