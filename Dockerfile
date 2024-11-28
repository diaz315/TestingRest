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
    libzip-dev \
    && rm -rf /var/lib/apt/lists/*

# Configure and enable Apache modules including MPM
RUN a2dismod mpm_event && \
    a2enmod mpm_prefork && \
    a2enmod rewrite

# Install PHP extensions
RUN docker-php-ext-install zip
RUN docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd mysqli pdo pdo_mysql curl

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Configurar Apache
RUN { \
    echo '<Directory /var/www/html>'; \
    echo '  Options Indexes FollowSymLinks'; \
    echo '  AllowOverride All'; \
    echo '  Require all granted'; \
    echo '</Directory>'; \
} > /etc/apache2/conf-available/docker-php.conf \
    && a2enconf docker-php

WORKDIR /var/www/html

# Este script se ejecutará al iniciar el contenedor
COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

EXPOSE 80

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["apache2-foreground"]