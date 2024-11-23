FROM php:7.4-apache

# Install system dependencies
RUN apt-get update && apt-get install -y \
    libcurl4-openssl-dev \
    libssl-dev \
    libc-client-dev \
    libkrb5-dev \
    zlib1g-dev \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    pkg-config \
    zip \
    unzip \
    git \
    libzip-dev  # Agregamos esta librería

# Install MongoDB extension
RUN pecl install mongodb \
    && docker-php-ext-enable mongodb

# Install ZIP extension
RUN docker-php-ext-install zip

# Configure and install PHP extensions
RUN docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd mysqli pdo pdo_mysql curl

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Create necessary directories with proper permissions
RUN mkdir -p /var/www/html/images \
    && mkdir -p /var/www/html/images/thumb \
    && mkdir -p /var/www/html/application/cache \
    && mkdir -p /var/www/html/application/logs \
    && mkdir -p /var/www/.composer/cache \
    && chown -R www-data:www-data /var/www/html \
    && chown -R www-data:www-data /var/www/.composer \
    && chmod -R 775 /var/www/html/images \
    && chmod -R 775 /var/www/html/images/thumb \
    && chmod -R 775 /var/www/html/application/cache \
    && chmod -R 775 /var/www/html/application/logs \
    && chmod -R 775 /var/www/.composer

# Configure Apache
RUN a2enmod rewrite
RUN sed -i 's/www-data:x:33:33:/www-data:x:1000:1000:/' /etc/passwd

WORKDIR /var/www/html

# Inicializar composer.json antes de instalar mongodb
# RUN composer init --no-interaction --name=myapp/proyecto --description="My App" \
# && composer require mongodb/mongodb

USER www-data

EXPOSE 80

CMD ["apache2-foreground"]