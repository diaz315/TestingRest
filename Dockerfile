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

# Configure and enable Apache modules
RUN a2dismod mpm_event && \
    a2enmod mpm_prefork && \
    a2enmod rewrite

# Install PHP extensions
RUN docker-php-ext-install zip && \
    docker-php-ext-configure gd --with-freetype --with-jpeg && \
    docker-php-ext-install -j$(nproc) gd mysqli pdo pdo_mysql curl

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Configurar Apache
RUN echo "ServerName localhost" > /etc/apache2/conf-available/servername.conf && \
    a2enconf servername

# Crear directorios necesarios y establecer permisos
RUN mkdir -p /var/www/html/application/logs \
    /var/www/html/application/cache \
    /var/www/html/images && \
    chown -R www-data:www-data /var/www/html && \
    chmod -R 755 /var/www/html && \
    chmod -R 777 /var/www/html/application/logs && \
    chmod -R 777 /var/www/html/application/cache && \
    chmod -R 777 /var/www/html/images

WORKDIR /var/www/html

# Script de entrada para verificar permisos en cada inicio
COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

EXPOSE 80

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["apache2-foreground"]