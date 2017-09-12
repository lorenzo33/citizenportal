# -*- coding: utf-8 -*-
from django import forms
from gestion.models import Porteur

class LoginForm(forms.Form):
    #On définit les champs de saisie du formulaire
    id = forms.CharField(label='Identifiant')
    password = forms.CharField(label='Mot de passe',
                               widget = forms.PasswordInput)
    def clean(self):
        cleaned_data = super(LoginForm, self).clean()
        id = cleaned_data.get("id")
        password = cleaned_data.get("password")
        
        #on verifie que les 2 champs sont valides
        if id and password:
            #On fait une requete dans la base sur les champs passés en paramètre
            result = Porteur.objects.filter(mot_de_passe=password,
                                             identifiant=id)
            if len(result) != 1:
                raise forms.ValidationError("Identifiant ou mot de passe erroné.")
        return cleaned_data
