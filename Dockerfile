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
    libfreetype6-dev

# Configure and install PHP extensions
RUN docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd mysqli pdo pdo_mysql curl

# Create necessary directories with proper permissions
RUN mkdir -p /var/www/html/images \
    && mkdir -p /var/www/html/images/thumb \
    && mkdir -p /var/www/html/application/cache \
    && mkdir -p /var/www/html/application/logs \
    && chown -R www-data:www-data /var/www/html \
    && chmod -R 775 /var/www/html/images \
    && chmod -R 775 /var/www/html/images/thumb \
    && chmod -R 775 /var/www/html/application/cache \
    && chmod -R 775 /var/www/html/application/logs

# Configure Apache
RUN a2enmod rewrite
RUN sed -i 's/www-data:x:33:33:/www-data:x:1000:1000:/' /etc/passwd

WORKDIR /var/www/html

USER www-data

EXPOSE 80

CMD ["apache2-foreground"]