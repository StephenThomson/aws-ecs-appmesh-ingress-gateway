#!/bin/sh

sed -ie "s/_APP_PORT/${APPLICATION_PORT:-8080}/" /etc/nginx/conf.d/app_nginx.conf

echo $SSL_CERT|base64 -d > /etc/ssl/certs/mdtp.pem
echo $SSL_KEY|base64 -d > /etc/ssl/private/mdtp.key

nginx -g "daemon off;"