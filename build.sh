#Before running this script, it assumes you cloned this repository to the Pi's default home directory - /home/pi
#If you have cloned this repository elsewhere then the index.php file needs amending to point to the correct dryer_status.txt location
#The rc.local file will also need updating to point to the correct vibration_sensor.py script

#Full Update
sudo apt update && sudo apt upgrade -y

#Install Nginx and PHP
sudo apt install nginx php-fpm -y

#Copy altered Nginx default config that enables using PHP processor
sudo cp php/nginxdefault /etc/nginx/sites-available/default

#Test Nginx configuration
sudo nginx -t

#Reload Nginx
sudo systemctl reload nginx

#Delete default Nginx test webpage
sudo rm /var/www/html/*

#Copy our webpage
sudo cp php/index.php /var/www/html/index.php

#Add our updated rc.local file that runs the python script at boot
sudo cp python/rc.local /etc/rc.local
