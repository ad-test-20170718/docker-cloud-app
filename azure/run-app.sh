#!/bin/sh

# Make sure we have dependencies
sudo apt-get update && sudo apt-get install -y git docker.io

# Extra steps for docker install
ln -sf /usr/bin/docker.io /usr/local/bin/docker
sed -i '$acomplete -F _docker docker' /etc/bash_completion.d/docker.io
update-rc.d docker.io defaults

REPOSITORY_URL='https://github.com/ad-test-20170718/docker-cloud-app.git'

git clone $REPOSITORY_URL
cd docker-cloud-app

docker build -t docker-cloud-app:latest ./
docker run -it -p 80:80 docker-cloud-app:latest
