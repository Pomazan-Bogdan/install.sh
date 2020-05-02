#!/bin/bash
wget -q -O - https://raw.githubusercontent.com/canha/golang-tools-install-script/master/goinstall.sh | bash
wget -q -O - https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | bash
git clone git://github.com/inishchith/autoenv.git ~/.autoenv
sed -i 's/.*plugins=(git).*/plugins=(git dnf kubectl zsh_reload go golang git helm postgres autoenv colorize cp docker docker-compose pip screen sudo systemd)/' /home/centos/.zshrc
echo 'export GOROOT=/home/centos/.go' >> /home/centos/.zshrc
echo 'export PATH=$GOROOT/bin:$PATH' >> /home/centos/.zshrc
echo 'export GOPATH=/home/centos/go' >> /home/centos/.zshrc
echo 'export PATH=$GOPATH/bin:$PATH' >> /home/centos/.zshrc
echo 'source ~/.autoenv/activate.sh' >> /home/centos/.zshrc

chsh -s /usr/bin/zsh
