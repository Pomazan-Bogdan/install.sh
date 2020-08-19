#!/bin/bash

sudo dnf config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo
sudo dnf config-manager --setopt=fastestmirror=True --save
sudo dnf update -y
sudo dnf install chrony -y
sudo dnf install docker-ce --nobest -y
sudo systemctl enable docker.service
sudo systemctl start docker.service
sudo systemctl enable chronyd & sudo systemctl start chronyd
sudo curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash
sudo usermod -aG docker $USER
sudo docker run -d -p443:443 --name=mtproto-proxy --restart=always -v proxy-config:/data -e TAG=97f6b9a9c9a1bdde5d6a858591c74650  telegrammessenger/proxy:latest
sudo cat /var/lib/docker/volumes/proxy-config/_data/secret

sudo docker stop mtproto-proxy

sudo docker run -d -p443:443 --name=mtproto-proxy2 --restart=always -v proxy-config:/data -e TAG=81acdfd067a9daee064ff732907dcae0  telegrammessenger/proxy:latest


