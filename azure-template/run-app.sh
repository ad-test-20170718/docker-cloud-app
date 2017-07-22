#!/bin/sh

REPOSITORY_URL='https://github.com/ad-test-20170718/docker-cloud-app.git'

git clone REPOSITORY_URL
cd docker-cloud-app

docker build -t docker-cloud-app:latest ./
docker run -it -p 80:80 docker-cloud-app:latest
