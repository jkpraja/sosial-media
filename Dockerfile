#FROM httpd:alpine3.17
#FROM httpd:latest
FROM php:7.4.33-apache

RUN apt update && docker-php-ext-install mysqli && docker-php-ext-install pdo_mysql

#RUN apt update && apt install -y php php-mysql php-curl php-json php-xml
#COPY ./repositories /etc/apk/repositories

#RUN apk update && apk add --no-cache php7 php7-fpm php7-opcache php7-mysqli

#COPY landing-page/ /usr/local/apache2/htdocs/landing-page/
#COPY . /usr/local/apache2/htdocs/
COPY . /var/www/html

#RUN cp /usr/local/apache2/conf/httpd.conf /usr/local/apache2/conf/httpd.backup
#RUN cp /usr/local/apache2/htdocs/my-httpd.conf /usr/local/apache2/conf/httpd.conf
