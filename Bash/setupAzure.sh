#!/bin/sh
sudo apt-get -y install php7.0 mcrypt php7.0-mcrypt php-mbstring php-pear php7.0-dev php7.0-xml
sudo curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
sudo curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list >  /etc/apt/sources.list.d/mssql-release.list
sudo apt-get update
sudo ACCEPT_EULA=Y apt-get install msodbcsql mssql-tools
#init 6
sudo apt-get upgrade -y
sudo apt install unixodbc-dev
sudo apt-get install libapache2-mod-php7.0 -y
sudo pecl install sqlsrv -y
sudo pecl install pdo_sqlsrv -y
echo "extension=/usr/lib/php/20151012/sqlsrv.so" >> /etc/php/7.0/apache2/php.ini
echo "extension=/usr/lib/php/20151012/pdo_sqlsrv.so" >> /etc/php/7.0/apache2/php.ini
echo "extension=/usr/lib/php/20151012/sqlsrv.so" >> /etc/php/7.0/cli/php.ini
echo "extension=/usr/lib/php/20151012/pdo_sqlsrv.so" >> /etc/php/7.0/cli/php.ini
sudo service apache2 restart
sudo chown febserver -R /var/www/html/
sudo a2enmod rewrite
sudo service apache2 restart
sudo apt-get install -y locales \
    && echo "en_US.UTF-8 UTF-8" > /etc/locale.gen \
    && locale-gen

echo "Go to --> 
nano /etc/apache2/apache2.conf
<Directory /var/www/>
        Options Indexes FollowSymLinks
        AllowOverride All
        Require all granted
</Directory>
"
