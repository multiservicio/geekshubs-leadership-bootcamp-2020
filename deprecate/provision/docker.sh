#! /bin/bash

echo "Updating apt"
sudo apt-get update

echo "Adjusting permissions"
sudo addgroup --system docker
sudo adduser vagrant docker
newgrp docker

echo "Installing docker daemon"
sudo snap install docker
