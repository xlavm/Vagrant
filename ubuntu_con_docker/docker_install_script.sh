#!/bin/bash
# Usage: docker-install-script.sh
# Author: Luis Angel Vanegas
# Version: 1.0

# Actualiza los repos

sudo apt-get update

# Instala utilidades

apt-get install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt-get update -y
apt-get install docker-ce -y
sudo usermod -aG docker $USER
sudo usermod -aG docker vagrant

