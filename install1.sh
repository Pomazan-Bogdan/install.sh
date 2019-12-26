#!/bin/bash

adduser centos \
passwd centos \
usermod -aG wheel centos \
passwd -d centos \
yum update -y
yum install git mc htop wget zsh chrony screen -y
systemctl enable chronyd && systemctl start chronyd && chronyc sources 
