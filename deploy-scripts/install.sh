#!/bin/bash

# Update system packages
sudo apt update -y

# Install Nginx if not installed
sudo apt install nginx -y

# Enable and start Nginx service
sudo systemctl enable nginx
sudo systemctl start nginx

# Set correct permissions for web root
sudo chown -R www-data:www-data /var/www/html
sudo chmod -R 755 /var/www/html

# Remove default Nginx page
sudo rm -f /var/www/html/index.nginx-debian.html
