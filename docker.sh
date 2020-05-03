#!/bin/bash

sudo systemctl stop firewalld
sudo systemctl disable firewalld
sudo dnf config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo
sudo dnf makecache
dnfi -y --nobest docker-ce
sudo systemctl enable docker.service
sudo systemctl start docker.service

sudo usermod -aG docker $USER

sudo docker plugin install grafana/loki-docker-driver:latest --alias loki --grant-all-permissions

sudo curl -L https://github.com/docker/compose/releases/download/1.25.5/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash
