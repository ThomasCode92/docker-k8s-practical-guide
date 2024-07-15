FROM nginx:stable-alpine

WORKDIR /etc/nginx/conf.d

COPY config/nginx.conf .

RUN mv nginx.conf default.conf

WORKDIR /var/www/html

COPY src .
