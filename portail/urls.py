from django.conf.urls import url
from . import views

app_name = 'portail'
urlpatterns = [
    url(r'^$', views.index, name='index'),
    url(r'^souscriptions$', views.liste_souscriptions, name='liste_souscriptions'),
    url(r'^welcome$', views.welcome, name='welcome'),
    url(r'^login$', views.login, name='login'), 
    url(r'^logout$', views.logout, name='logout'),
]
