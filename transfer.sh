#! /bin/bash

# si tu veux tester ton serveur depuis client ou l'inverse
ping -c 1 -w 4 192.168.0.30 > /dev/null
EXTLINK=$?
if [ $EXTLINK -ne 0 ]
then
	echo "$(date) : no VPN link ..." >> tonfichierlog.log
	exit 111
fi


# scp
scp /home/django/citizenportal/db.json pi@192.168.0.30:/home/pi/bdd/ >> tonfichierlog.log
