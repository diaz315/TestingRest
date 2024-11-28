# Dockerfile
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

# Configurar VirtualHost
RUN echo '<VirtualHost *:80>\n\
    ServerName localhost\n\
    DocumentRoot /var/www/html\n\
    <Directory /var/www/html>\n\
        Options Indexes FollowSymLinks MultiViews\n\
        AllowOverride All\n\
        Require all granted\n\
        Order allow,deny\n\
        allow from all\n\
    </Directory>\n\
    ErrorLog ${APACHE_LOG_DIR}/error.log\n\
    CustomLog ${APACHE_LOG_DIR}/access.log combined\n\
</VirtualHost>' > /etc/apache2/sites-available/000-default.conf