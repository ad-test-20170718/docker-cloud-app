#!/bin/sh

# Make sure to use docker login first
# If you need to change credentials, do so and also
# If you changed the docker repository, change it in azure/azuredeploy.json
DOCKER_USER=adtest20170718
DOCKER_IMAGE_NAME=docker-cloud-app

docker build -t $DOCKER_USER/$DOCKER_IMAGE_NAME:latest ./
docker push $DOCKER_USER/$DOCKER_IMAGE_NAME
