FROM nimmis/apache:14.04

MAINTAINER nimmis <kjell.havneskold@gmail.com>

# disable interactive functions
ENV DEBIAN_FRONTEND noninteractive

RUN sudo apt-get install software-properties-common && \
add-apt-repository ppa:ondrej/php && \
apt-get update && \
apt-get install -y apache2 php5.6 libapache2-mod-php5.6  \
php5.6-fpm php5.6-cli php5.6-mysql php5.6-pgsql php5.6-sqlite php5.6-redis \
php5.6-apcu php5.6-intl php5.6-imagick php5.6-mcrypt php5.6-json php5.6-gd php5.6-curl && \
php5.6enmod mcrypt && \
rm -rf /var/lib/apt/lists/* && \
cd /tmp && curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer
