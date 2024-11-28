#!/bin/bash
set -e

# Crear directorios si no existen
mkdir -p /var/www/html/application/logs
mkdir -p /var/www/html/application/cache
mkdir -p /var/www/html/images

# Establecer permisos
chown -R www-data:www-data /var/www/html
find /var/www/html -type d -exec chmod 755 {} \;
find /var/www/html -type f -exec chmod 644 {} \;

# Permisos especiales para directorios de escritura
chmod -R 777 /var/www/html/application/logs
chmod -R 777 /var/www/html/application/cache
chmod -R 777 /var/www/html/images

# Ejecutar Apache
exec "$@"