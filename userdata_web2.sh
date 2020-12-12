#! /bin/bash
yum update
yum install -y nginx

echo "Accubits test" > /var/www/index.html

service nginx start
systemctl enable nginx
