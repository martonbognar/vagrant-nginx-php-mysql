MYSQL_PASS=1234
MYSQL_DB=lorem

#!/bin/bash
apt-get update

apt-get install nginx -y

apt-get install python-software-properties build-essential -y

add-apt-repository ppa:ondrej/php5 -y

apt-get update

apt-get install php5-common php5-dev php5-cli php5-fpm -y

apt-get install curl php5-curl php5-gd php5-mcrypt php5-mysqlnd -y

apt-get install debconf-utils -y

debconf-set-selections <<< "mysql-server mysql-server/root_password password $MYSQL_PASS"
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password $MYSQL_PASS"

apt-get install mysql-server -y

cp /var/www/provision/config/nginx_vhost /etc/nginx/sites-available/nginx_vhost

ln -s /etc/nginx/sites-available/nginx_vhost /etc/nginx/sites-enabled/

rm -rf /etc/nginx/sites-available/default

service php5-fpm restart
service mysql restart
service nginx restart

mysql -u root -p$MYSQL_PASS -e "create database $MYSQL_DB;"
mysql -u root -p$MYSQL_PASS $MYSQL_DB < /var/www/src/schema.sql

cd /tmp
curl -sS https://getcomposer.org/installer | php
mv /tmp/composer.phar /usr/local/bin/composer

cd /var/www/src
composer install
