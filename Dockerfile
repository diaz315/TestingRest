FROM php:7.4-apache

RUN apt-get update && \
    apt-get install -y \
        libcurl4-openssl-dev \
        libssl-dev \
        libc-client-dev \
        libkrb5-dev \
        zlib1g-dev && \
    docker-php-ext-install mysqli pdo pdo_mysql && \
    docker-php-ext-configure curl && \
    docker-php-ext-install curl

# Configuración minimalista de PHP y sesiones
RUN echo "session.save_handler = files" >> /usr/local/etc/php/conf.d/docker-php-session.ini && \
    echo "session.cookie_httponly = 1" >> /usr/local/etc/php/conf.d/docker-php-session.ini

# Directorios y permisos básicos
RUN mkdir -p /var/www/html/application/cache && \
    mkdir -p /var/www/html/application/logs && \
    chown -R www-data:www-data /var/www/html && \
    chmod -R 755 /var/www/html && \
    chmod -R 777 /var/www/html/application/cache && \
    chmod -R 777 /var/www/html/application/logs && \
    mkdir -p /var/log/apache2 && \
    chown -R www-data:www-data /var/log/apache2 && \
    chmod -R 755 /var/log/apache2

# Apache configuration
RUN a2dismod mpm_event && \
    a2enmod mpm_prefork rewrite

EXPOSE 80

CMD ["apache2-foreground"]