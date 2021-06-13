#!/bin/bash

         echo "обновить"
sudo apt update
         echo "установить nginx"
sudo apt -y install nginx
sudo systemctl restart nginx
sudo apt install ufw
sudo ufw allow 'Nginx HTTP'
sudo ufw allow SSH
sudo ufw -y enable

cd /var/www/html
rm -f index.nginx-debian.html 
echo "<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>Hello!</title>
    </head>

    <body>
        <h1>Hello World!</h1>
        <p>This is a simple paragraph.</p>
    </body>

</html>" > index.html

