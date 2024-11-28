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

# Create directories and set permissions
RUN mkdir -p /var/www/html/images \
    /var/www/html/images/thumb \
    /var/www/html/application/cache \
    /var/www/html/application/logs \
    /var/www/.composer/cache

# Set permissions
RUN chown -R www-data:www-data /var/www && \
    chmod -R 755 /var/www/html && \
    chmod -R 775 /var/www/html/images \
    /var/www/html/images/thumb \
    /var/www/html/application/cache \
    /var/www/html/application/logs \
    /var/www/.composer

WORKDIR /var/www/html

EXPOSE 80

CMD ["apache2-foreground"]