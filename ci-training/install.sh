#!/bin/bash

sudo apt-get update

echo "Installing vs-code..."

wget https://az764295.vo.msecnd.net/stable/036a6b1d3ac84e5ca96a17a44e63a87971f8fcc8/code_1.37.0-1565227985_amd64.deb
sudo dpkg -i code_1.37.0-1565227985_amd64.deb 

echo "Installing conan..."

wget https://dl.bintray.com/conan/installers/conan-ubuntu-64_1_18_1.deb
sudo dpkg -i conan-ubuntu-64_1_18_1.deb

echo "Installing docker..."

sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io
sudo usermod -aG docker $USER
sudo systemctl enable docker


echo "Installing docker-compose..."

sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo curl -L https://raw.githubusercontent.com/docker/compose/1.24.1/contrib/completion/bash/docker-compose -o /etc/bash_completion.d/docker-compose


echo "Installing dev tools"
sudo apt install -y cmake g++ gcc meld git

