

#!/bin/bash
set -e

echo "Inicializando proyecto proyecto-docker..."

# Dar permisos a todos los scripts
chmod +x scripts/*.sh

# Verificar Docker
if ! command -v docker &> /dev/null; then
  echo "ERROR: Docker no está instalado"
  exit 1
fi

# Verificar Docker Compose (plugin moderno)
if ! docker compose version &> /dev/null; then
  echo "ERROR: Docker Compose no está disponible"
  exit 1
fi

# Verificar kubectl (opcional pero útil)
if ! command -v kubectl &> /dev/null; then
  echo "Advertencia: kubectl no está instalado (Kubernetes no funcionará)"
fi

# Crear archivo .env si no existe
if [ ! -f .env ]; then
  echo "Creando archivo .env desde .env.example..."
  cp .env.example .env
  echo "IMPORTANTE: edita el archivo .env antes de continuar"
fi

echo "Setup completado correctamente"