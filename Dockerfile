FROM php:5.6-fpm-alpine

RUN apt-get install -y apache2 libapache2-mod-php5.6  && \ 
cd /tmp && curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer
