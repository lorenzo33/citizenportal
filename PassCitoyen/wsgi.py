"""
WSGI config for PassCitoyen project.

It exposes the WSGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/1.9/howto/deployment/wsgi/
"""

import os, sys

path1 = '/home/django/workspace/citizenportal'
if path1 not in sys.path:
    sys.path.append(path1)

path2 = '/home/django/workspace/citizenportal/PassCitoyen'
if path2 not in sys.path:
    sys.path.append(path2)

from django.core.wsgi import get_wsgi_application

os.environ.setdefault("DJANGO_SETTINGS_MODULE", "PassCitoyen.settings")

application = get_wsgi_application()
