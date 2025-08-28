#!/bin/bash
sudo rm -f /var/www/html/index.html
sudo cp /home/ubuntu/index.html /var/www/html/
sudo systemctl restart nginx
