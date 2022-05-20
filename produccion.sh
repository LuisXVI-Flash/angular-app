echo "Detener los contenedores"
docker stop $(docker ps -a -q)

echo "Iniciando el entorno"
export FE_APP_PATH="$(pwd)"

COMPOSE_HTTP_TIMEOUT=200 docker-compose -f docker-compose.yml up --build --no-deps --force-recreate