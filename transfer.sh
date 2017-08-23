#!/bin/sh
cd /home/django/workspace/citizenportal/
echo "Répertoire courant "$pwd >> tonfichierlog.log 
python manage.py dumpdata gestion.carte > carte.json

# si tu veux tester ton serveur depuis client ou l'inverse
ping -c 1 -w 4 192.168.70.104 > /dev/null
EXTLINK=$?
if [ $EXTLINK -ne 0 ]
then
	echo "$(date) : no VPN link ..." >> tonfichierlog.log
	exit 111
fi


# scp
scp /home/django/workspace/citizenportal/carte.json pi@192.168.70.104:/home/pi/citizenpass 2>> tonfichierlog.log
