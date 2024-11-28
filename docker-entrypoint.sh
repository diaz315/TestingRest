#!/bin/bash
set -e

# Crear directorios necesarios
mkdir -p /var/www/html/application/logs
mkdir -p /var/www/html/application/cache
mkdir -p /var/www/html/images

# Establecer permisos correctos
find /var/www/html -type f -exec chmod 644 {} \;
find /var/www/html -type d -exec chmod 755 {} \;
chown -R www-data:www-data /var/www/html

# Asegurar que los directorios que necesitan escritura sean escribibles
chmod -R 775 /var/www/html/images
chmod -R 775 /var/www/html/application/cache
chmod -R 775 /var/www/html/application/logs

# Ejecutar Apache en primer plano
exec "$@"