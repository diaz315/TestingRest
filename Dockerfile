# Usamos una imagen base que ya incluye PHP y Apache
FROM php:7.4-apache

# Instalamos las extensiones de PHP necesarias
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

# Habilitamos los módulos necesarios de Apached
RUN a2dismod mpm_event && \
    a2enmod mpm_prefork rewrite

# Configuramos los permisos para el directorio de Apache
RUN chown -R www-data:www-data /var/www/html/ && \
    chmod -R 755 /var/www/html/

# Exponemos el puerto 80
EXPOSE 80

# Iniciar Apache en primer plano
CMD ["apache2-foreground"]