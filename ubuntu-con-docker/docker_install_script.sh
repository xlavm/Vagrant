#!/bin/bash
# Usage: docker-install-script.sh
# Author: Luis Angel Vanegas
# Version: 1.0

#Update packages
sudo apt-get update

# Tools for OS
apt-get install apt-transport-https ca-certificates curl software-properties-common git nano -y

#install docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt-get update -y
apt-get install docker-ce -y

#execute docker with one different user
sudo usermod -aG docker $USER

#execute docker with vagrant user
sudo usermod -aG docker vagrant

