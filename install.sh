#!/bin/bash

adduser centos \
passwd centos \
usermod -aG wheel centos \
sudo passwd -d centos \
yum update -y
yum install git mc htop wget zsh chrony screen -y
sudo systemctl enable chronyd && sudo systemctl start chronyd && chronyc sources && \
wget -q -O - https://raw.githubusercontent.com/canha/golang-tools-install-script/master/goinstall.sh | bash
wget -q -O - https://raw.githubusercontent.com/canha/golang-tools-install-script/master/goinstall.sh | bash
wget -q -O - https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | bash
git clone git://github.com/inishchith/autoenv.git ~/.autoenv
echo '/usr/bin/zsh' >> /etc/shells
chsh -s $(which zsh)
