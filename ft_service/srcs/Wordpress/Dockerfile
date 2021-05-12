FROM alpine:3.12

RUN apk update
RUN apk add --no-cache php7-fpm 
RUN apk add --no-cache php7-common 
RUN apk add --no-cache php7-session 
RUN apk add --no-cache php7-iconv 
RUN apk add --no-cache php7-json 
RUN apk add --no-cache php7-gd
RUN apk add --no-cache php7-curl
RUN apk add --no-cache php7-xml
RUN apk add --no-cache php7-mysqli
RUN apk add --no-cache php7-imap
RUN apk add --no-cache php7-cgi
RUN apk add --no-cache fcgi php7-pdo
RUN apk add --no-cache php7-pdo_mysql
RUN apk add --no-cache php7-soap
RUN apk add --no-cache php7-xmlrpc
RUN apk add --no-cache php7-posix
RUN apk add --no-cache php7-mcrypt
RUN apk add --no-cache php7-gettext
RUN apk add --no-cache php7-ldap
RUN apk add --no-cache php7-ctype
RUN apk add --no-cache php7-dom
RUN apk add --no-cache php7-mbstring
RUN apk add --no-cache wget
RUN apk add --no-cache nginx
RUN apk add --no-cache supervisor
RUN apk add telegraf --repository http://dl-cdn.alpinelinux.org/alpine/latest-stable/community/ --allow-untrusted

RUN wget http://wordpress.org/latest.tar.gz 
RUN tar -xzvf latest.tar.gz
RUN rm latest.tar.gz

RUN	mkdir -p /run/nginx
RUN	mv /wordpress /var/www/

RUN	chmod +x /var/www/wordpress
RUN chmod +x /etc/nginx/nginx.conf

COPY /wp-config.php /var/www/wordpress
COPY /default.conf /etc/nginx/nginx.conf
COPY /supervisord.conf /etc/supervisord.conf
COPY /telegraf.conf /etc/telegraf/telegraf.conf

RUN chmod +x /var/www/wordpress/wp-config.php

EXPOSE 5050

CMD supervisord