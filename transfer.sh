#!/bin/sh
cd /home/django/workspace/citizenportal/
echo "Répertoire courant "$pwd >> export_base.log 
python manage.py dumpdata gestion.carte > carte.json

# On teste la connexion a la borne et on envoie le fichiere
ping -c 1 -w 4 192.168.70.107 > /dev/null
EXTLINK=$?
if [ $EXTLINK -ne 0 ]
then
	echo "$(date) : no VPN link ..." >> export_base.log
	exit 111
fi


# scp
scp /home/django/workspace/citizenportal/carte.json pi@192.168.70.107:/home/pi/citizenpass 2>> export_base.log
