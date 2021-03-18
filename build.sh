#!/bin/sh
# download requirements
sudo apt update && apt install docker docker-compose wget curl -y
wget https://github.com/multiarch/qemu-user-static/releases/download/v5.2.0-2/qemu-s390x-static
sudo docker build --build-arg TARGET_ARCH=s390x --build-arg QEMU_ARCH=s390x --build-arg CERTBOT_VERSION=1.13.0 -t certbot/certbot ./
