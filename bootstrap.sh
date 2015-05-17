#!/usr/bin/env bash

apt-get update
apt-get install -y nginx php5-fpm php5-cli mysql-server
ln -fs /vagrant/nginx.conf /etc/nginx/sites-enabled/ffsale.loc
service nginx restart

if ! [ -f /usr/local/bin/composer ]; then
    curl -sS https://getcomposer.org/installer | php
    mv composer.phar /usr/local/bin/composer
fi
