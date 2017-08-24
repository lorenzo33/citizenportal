# -*- coding:utf-8 -*-
from django.shortcuts import render_to_response
from datetime import datetime
from django.http import HttpResponseRedirect, HttpResponse
from gestion.models import Porteur, Service, SouscriptionSvc
from django.template import loader

def index(request):
    return render_to_response('accueil/index.html', 
                  {'current_date_time': datetime.now}) 

def login(request):
    #On teste si le formulaire a ete soumis
    return render_to_response('login.html')

def liste_porteurs(request):
    liste_des_porteurs = Porteur.objects.all().order_by('nom')
    liste_des_services = Service.objects
    template = loader.get_template('consultation/liste_porteurs.html')
    context = {
        'liste_des_porteurs': liste_des_porteurs,
    }
    return HttpResponse(template.render(context, request))