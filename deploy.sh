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
docker context create ecs ecsDocker${run_number} --from-env
docker context use ecsDocker${run_number}
docker compose -f docker-compose.yaml up
while [ -z "docker ps --filter status=running | grep app" ]; do sleep 1; done;
echo "App is ready!"
docker compose ps
#docker compose -f docker-compose.yaml convert > aws-cloudformation.yaml
#aws cloudformation create-stack --stack-name ecsDocker${run_number} --template-body file://aws-cloudformation.yaml
#aws cloudformation wait stack-create-complete --stack-name ecsDocker${run_number}
