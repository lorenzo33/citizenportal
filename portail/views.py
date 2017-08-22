from django.shortcuts import render_to_response

from datetime import datetime

def index(request):
    return render_to_response('accueil/index.html', 
                  {'current_date_time': datetime.now}) 

def login(request):
    #On teste si le formulaire a ete soumis
    return render_to_response('login.html')               
    