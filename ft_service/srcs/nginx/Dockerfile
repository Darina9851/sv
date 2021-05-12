FROM alpine:3.12

RUN apk update && apk upgrade
RUN apk add --no-cache openssl
RUN apk add --no-cache nginx
RUN apk add --no-cache supervisor
RUN apk add telegraf --repository http://dl-cdn.alpinelinux.org/alpine/latest-stable/community/ --allow-untrusted

RUN mkdir -p /run/nginx

COPY nginx.conf /etc/nginx/nginx.conf
COPY /supervisord.conf /etc/supervisord.conf
COPY /index.html /var/www/index.html
COPY /telegraf.conf /etc/telegraf/telegraf.conf

RUN openssl req -newkey rsa:4096 -days 365 -nodes -x509 -subj \
	"/C=RF/ST=/L=Kazan/O=21school/CN=unlix.ru" \
	-keyout /etc/ssl/private/nginx.key -out /etc/ssl/certs/nginx.crt 

EXPOSE 80 443

CMD supervisord