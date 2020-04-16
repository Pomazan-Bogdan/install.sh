#!/bin/bash
wget -q -O - https://raw.githubusercontent.com/canha/golang-tools-install-script/master/goinstall.sh | bash
wget -q -O - https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | bash
git clone git://github.com/inishchith/autoenv.git ~/.autoenv
chsh -s /usr/bin/zsh
sudo dnf config-manager --setopt=fastestmirror=True --save
