#!/bin/bash

# Eliminar versiones anteriores si existen
sudo apt-get remove -y docker docker-engine docker.io containerd runc >/dev/null 2>&1

# Actualizar los repositorios
sudo apt-get update -y >/dev/null 2>&1

# Instalar dependencias necesarias
sudo apt-get install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release >/dev/null 2>&1

# Añadir clave GPG oficial de Docker
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg >/dev/null 2>&1

# Configurar el repositorio
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Actualizar los repositorios con el nuevo repo de Docker
sudo apt-get update -y >/dev/null 2>&1

# Instalar Docker Engine y Docker Compose
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin >/dev/null 2>&1

# Añadir usuario actual al grupo docker para evitar usar sudo
sudo usermod -aG docker $USER

# Habilitar el servicio Docker para que inicie con el sistema
sudo systemctl enable docker >/dev/null 2>&1

# Iniciar el servicio Docker
sudo systemctl start docker >/dev/null 2>&1

# Verificar la instalación
docker --version
docker compose version

echo "Instalación completada. Por favor, cierra la sesión y vuelve a iniciarla para que los cambios en los grupos tengan efecto."