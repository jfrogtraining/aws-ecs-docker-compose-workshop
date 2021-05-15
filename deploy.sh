#!/bin/bash

sudo apt  install jq -y
curl -L -o docker-linux-amd64.tar.gz https://github.com/docker/compose-cli/releases/download/v1.0.10/docker-linux-amd64.tar.gz
tar xzf docker-linux-amd64.tar.gz
chmod +x docker/docker
which docker
sudo ln -s $(which docker) /usr/local/bin/com.docker.cli
./docker/docker --context default ps
sudo mv docker/docker /usr/local/bin/docker
docker version
echo $AWS_ACCESS_KEY_ID
echo $AWS_SECRET_ACCESS_KEY
docker context create ecs ecsDocker --from-env
docker context use ecsDocker
docker compose -f docker-compose.yaml -f  docker-compose.prod.migrate.yaml -f docker-compose.prod.scaling.yaml up -d --verbose
