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
RUN apk add --no-cache php7-cgi fcgi 
RUN apk add --no-cache php7-pdo
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
RUN apk add --no-cache openssl
RUN apk add --no-cache wget
RUN apk add --no-cache nginx
RUN apk add --no-cache supervisor
RUN apk add telegraf --repository http://dl-cdn.alpinelinux.org/alpine/latest-stable/community/ --allow-untrusted

RUN wget http://files.directadmin.com/services/all/phpMyAdmin/phpMyAdmin-5.0.4-all-languages.tar.gz
RUN tar zxvf phpMyAdmin-5.0.4-all-languages.tar.gz
RUN rm phpMyAdmin-5.0.4-all-languages.tar.gz

RUN mv /phpMyAdmin-5.0.4-all-languages /var/www/phpmyadmin
RUN	chmod +x /var/www/phpmyadmin
RUN mkdir -p /run/nginx
RUN openssl req -newkey rsa:4096 -days 365 -nodes -x509 -subj \
	"/C=RF/ST=/L=Kazan/O=21school/CN=unlix.ru" \
	-keyout /etc/ssl/private/nginx.key -out /etc/ssl/certs/nginx.crt 

COPY /default.conf /etc/nginx/nginx.conf
COPY /config.inc.php /var/www/phpmyadmin/config.inc.php
COPY /supervisord.conf /etc/supervisord.conf
COPY /telegraf.conf /etc/telegraf/telegraf.conf

EXPOSE 5000

CMD supervisord