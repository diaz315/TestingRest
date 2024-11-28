#!/bin/bash
set -e

# Crear directorios necesarios
mkdir -p /var/www/html/application/logs
mkdir -p /var/www/html/application/cache
mkdir -p /var/www/html/images
mkdir -p /var/www/html/system/core

# Establecer permisos más permisivos para los directorios de escritura
find /var/www/html -type d -exec chmod 755 {} \;
find /var/www/html -type f -exec chmod 644 {} \;

# Establecer www-data como propietario de todo
chown -R www-data:www-data /var/www/html

# Permisos especiales para directorios que necesitan escritura
chmod -R 777 /var/www/html/application/logs
chmod -R 777 /var/www/html/application/cache
chmod -R 777 /var/www/html/images
chmod -R 777 /var/www/html/system/core

# Verificar que los directorios existen y tienen los permisos correctos
ls -la /var/www/html/application/logs
ls -la /var/www/html/application/cache
ls -la /var/www/html/system/core

# Ejecutar Apache en primer plano
exec "$@"