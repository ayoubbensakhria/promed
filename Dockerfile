FROM ubuntu:16.04
MAINTAINER Ayoub Bensakhria <iayoub@yandex.com>

#VOLUME ["/var/www/"]


RUN apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install -y \
      apache2 \
      php7.0 \
      php7.0-cli \
      libapache2-mod-php7.0 \
      php-apcu \
      php-xdebug \
      php7.0-gd \
      php7.0-json \
      php7.0-ldap \
      php7.0-mbstring \
      php7.0-mysql \
      php7.0-pgsql \
      php7.0-sqlite3 \
      php7.0-xml \
      php7.0-xsl \
      php7.0-zip \
      php7.0-soap \
      php7.0-opcache \
      php7.0-curl \      
      composer 

#RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin/ --filename=composer
#RUN apt-get install -y php7.0-curl

COPY config/apache.conf /etc/apache2/sites-available/000-default.conf

COPY config/run /usr/local/bin/run

RUN chmod +x /usr/local/bin/run

RUN a2enmod rewrite

RUN chgrp -R www-data /var/www/

COPY ./public_html/ /var/www/public_html

EXPOSE 80

CMD ["/usr/local/bin/run"]
