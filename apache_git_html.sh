#!/bin/bash

echo "Installing Apache server..."
sudo yum -y install httpd

echo "Starting HTTP service..."
sudo systemctl enable httpd.service

echo "Starting Apache Server..."
sudo systemctl start httpd.service

echo "Cloning jwade005's github..."
sudo yum -y install git
git clone https://github.com/jwade005/install_scripts.git

echo "Publishing Website..."
sudo sh -c 'cat install_scripts/index.html > /var/www/html/index.html

echo "Adjusting Permissions..."
sudo chmod 644 /var/www/html/index.html
sudo setenforce 0
