from django.contrib import admin
from gestion.models import Porteur, Carte

class CarteAdmin(admin.ModelAdmin):
    list_display = ['code', 'statut', 'porteur']


# Register your models here.
admin.site.register(Porteur)
admin.site.register(Carte, CarteAdmin)