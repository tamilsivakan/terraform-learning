#!/bin/bash
sudo apt update -y &&
sudo apt install -y nginx
echo "WELCOME TO NGINX PAGE FROM TERRAFORM" > /var/www/html/index.html

