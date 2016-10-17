#!/bin/bash

echo "Installing Apache server"
sudo yum -y install httpd

echo "Starting HTTP service"
sudo systemctl enable httpd.service

echo "Starting Apache Server"
sudo systemctl start httpd.service

echo "Cloning jwade005's github"
sudo yum -y install git
sudo git clone https://github.com/jwade005/install_scripts.git

echo "Publishing Website..."
sudo mv install_scripts/index.html /var/www/html
