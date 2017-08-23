# -*- coding: utf-8 -*-
from xadmin import Settings
from gestion.models import Porteur, Carte

class Base(Settings):
    enable_themes = True
    use_bootswatch = True

class Comm(Settings):
    menu_style = 'accordion'
    global_models_icon = {
        Porteur : 'fa fa-user',
        Carte : 'fa fa-server',
    }
    site_title = 'PCM - Pass Citoyen Multiservice'
    site_footer = 'PCM - Pass Citoyen Multiservice - v0.1 (PROD)'