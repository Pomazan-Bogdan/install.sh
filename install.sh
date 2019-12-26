#!/bin/bash

sudo yum update -y
sudo yum install git mc htop wget zsh chrony screen -y
sudo systemctl enable chronyd && sudo systemctl start chronyd && chronyc sources && \
curl https://raw.githubusercontent.com/canha/golang-tools-install-script/master/goinstall.sh | bash
wget -q -O - https://raw.githubusercontent.com/canha/golang-tools-install-script/master/goinstall.sh | bash &&
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" \
git clone git://github.com/inishchith/autoenv.git ~/.autoenv
rm .zshrc
wget https://raw.githubusercontent.com/Pomazan-Bogdan/install.sh/master/.zshrc
echo '/usr/bin/zsh' >> /etc/shells
chsh -s $(which zsh)
