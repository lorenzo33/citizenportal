# -*- coding:utf-8 -*-
from django.shortcuts import render_to_response
from datetime import datetime
from django.http import HttpResponseRedirect, HttpResponse
from gestion.models import Porteur, Service, SouscriptionSvc
from forms import LoginForm
from django.template import loader

def index(request):
    return render_to_response('accueil/index.html', 
                  {'current_date_time': datetime.now}) 

def login(request):
    #On teste si le formulaire a ete soumis
    if request.method == "POST":
        form = LoginForm(request.POST)
        if form.is_valid():
            user_id = form.cleaned_data['id']
            logged_user = Porteur.objects.get(identifiant=user_id)
            request.session['logged_user_id'] = logged_user.id    
            return HttpResponseRedirect('/PassCitoyen/welcome')
        else:
            return render_to_response('login/login.html', {'form': form})               
    #Le formulaire n'a pas ete soumis'
    else:
        form = LoginForm()
        return render_to_response('login/login.html', {'form': form})
    
def logout(request):
    try:
        for sesskey in request.session.keys():
            del request.session[sesskey]       
        request.session.flush()
    except KeyError:
        pass
    return HttpResponse("You're logged out.")    

    
def welcome(request):
    if 'logged_user_id' in request.session:
        logged_user_id = request.session['logged_user_id']
        logged_user = Porteur.objects.get(id=logged_user_id)
        services_souscris = SouscriptionSvc.objects.filter(porteur=logged_user_id)
        return render_to_response('consultation/welcome.html',
                                  {'logged_user': logged_user,
                                  'services_souscris' : services_souscris})
    else:
        return HttpResponseRedirect('/PassCitoyen/login')

def liste_souscriptions(request):
    liste_des_souscriptions = SouscriptionSvc.objects.all().order_by('service')
    template = loader.get_template('consultation/liste_souscriptions.html')
    context = {
        'liste_des_souscriptions': liste_des_souscriptions,
    }
    return HttpResponse(template.render(context, request))