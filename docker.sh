#!/bin/bash
#this script will install all the things taht docker needs
#fuck my life bro fuc u apt-get install docker 

errorLog="/home/$USER/bashScripts/docker/errorLog.log"

echo "installing docker..."
sleep 2

apt-get remove -y docker docker-engine docker.io containerd runc

apt-get update

apt-get -y install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

mkdir -p /etc/apt/keyrings

curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null

  apt-get update

  apt-get -y install docker-ce docker-ce-cli containerd.io docker-compose-plugin

  echo "docker has been installed"
  sleep 2