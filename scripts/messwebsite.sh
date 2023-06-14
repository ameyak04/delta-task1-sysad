#!/bin/bash
your_server_IP = $(cat /root/inputfiles/ipaddr.txt)

mkdir -p /var/www/html/gamma-z.hm
chown -R $USER:$USER /var/www/html/gamma-z.hm
chmod -R 755 /var/www

echo -e "\n$your_server_IP gamma-z.hm \n" >> /etc/hosts
