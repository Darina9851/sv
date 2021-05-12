 FROM alpine:3.12

RUN apk update && apk upgrade
RUN apk add --no-cache openssl
RUN apk add --no-cache vsftpd
RUN apk add --no-cache supervisor
RUN apk add telegraf --repository http://dl-cdn.alpinelinux.org/alpine/latest-stable/community/ --allow-untrusted

#RUN mkdir -p /var/admin
RUN adduser -D admin -h /var/admin
RUN chown admin:admin /var/admin
RUN echo "admin:1111" | chpasswd
#RUN	adduser -D admin && echo "admin:1111" | chpasswd

COPY /vsftpd.conf /etc/vsftpd/vsftpd.conf
COPY /supervisord.conf /etc/supervisord.conf
COPY /telegraf.conf /etc/telegraf/telegraf.conf

RUN openssl req -newkey rsa:4096 -days 365 -nodes -x509 -subj \
	"/C=RF/ST=/L=Kazan/O=21school/CN=unlix.ru" \
	-keyout /etc/ssl/private/vsftpd.key -out /etc/ssl/certs/vsftpd.pem

RUN chmod +x /var/admin
RUN chmod +x /etc/vsftpd/vsftpd.conf
RUN chmod +x /etc/supervisord.conf
RUN chmod +x /etc/telegraf/telegraf.conf

EXPOSE 21 21000

CMD supervisord