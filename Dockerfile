FROM nimmis/apache:14.04

MAINTAINER nimmis <kjell.havneskold@gmail.com>

# disable interactive functions
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
apt-get install -y apache2 php7 libapache2-mod-php7  \
php7-fpm php7-cli php7-mysql php7-pgsql php7-sqlite php7-redis \
php7-apcu php7-intl php7-imagick php7-mcrypt php7-json php7-gd php7-curl && \
php7enmod mcrypt && \
rm -rf /var/lib/apt/lists/* && \
cd /tmp && curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer
