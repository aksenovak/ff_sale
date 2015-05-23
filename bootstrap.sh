#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get install -y nginx php5-fpm php5-cli mysql-server php5-mysql git
ln -fs /vagrant/nginx.conf /etc/nginx/sites-enabled/ffsale.loc
service nginx restart

if ! [ -f /usr/local/bin/composer ]; then
    curl -sS https://getcomposer.org/installer | php
    mv composer.phar /usr/local/bin/composer
    sudo -u vagrant /usr/local/bin/composer global require "fxp/composer-asset-plugin:1.0.0"
fi