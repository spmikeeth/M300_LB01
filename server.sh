#!/bin/bash
#
#	Datenbank installieren und Konfigurieren
#


apt-get update -y
apt-get -y install apache2
apt install php-pear php-fpm php-dev php-zip php-curl php-xmlrpc php-gd php-mysql php-mbstring php-xml libapache2-mod-php -y

service apache2 restart