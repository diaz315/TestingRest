#!/bin/bash
set -e

# Establecer permisos correctos en el directorio de la aplicación
chown -R www-data:www-data /var/www/html
find /var/www/html -type d -exec chmod 755 {} \;
find /var/www/html -type f -exec chmod 644 {} \;

# Asegurar que los directorios que necesitan escritura sean escribibles
chmod -R 775 /var/www/html/images
chmod -R 775 /var/www/html/application/cache
chmod -R 775 /var/www/html/application/logs

# Ejecutar el comando proporcionado (normalmente apache2-foreground)
exec "$@"