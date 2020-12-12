#! /bin/bash
yum update
yum install -y nginx
sed '/^http/a upstream backend {\n server 10.0.0.11\n server 10.0.0.12\n }' /etc/nginx/nginx.conf
echo "server {
        location / {
           proxy_pass http://backend;
              }
               }" >/etc/nginx/conf.d/accubits-test.com

echo "Accubits test" > /var/www/index.html

service nginx start
systemctl enable nginx
