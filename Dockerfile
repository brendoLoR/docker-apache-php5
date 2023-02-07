FROM nimmis/apache:14.04

MAINTAINER nimmis <kjell.havneskold@gmail.com>

# disable interactive functions
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
apt-get install -y apache2 php56 libapache2-mod-php56  \
php56-fpm php56-cli php56-mysql php56-pgsql php56-sqlite php56-redis \
php56-apcu php56-intl php56-imagick php56-mcrypt php56-json php56-gd php56-curl && \
php56enmod mcrypt && \
rm -rf /var/lib/apt/lists/* && \
cd /tmp && curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer
