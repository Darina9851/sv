FROM alpine:3.12

RUN apk update
RUN apk add --no-cache influxdb
RUN apk add --no-cache supervisor
RUN apk add telegraf --repository http://dl-cdn.alpinelinux.org/alpine/latest-stable/community/ --allow-untrusted

COPY /supervisord.conf /etc/supervisord.conf
COPY /telegraf.conf /etc/telegraf/telegraf.conf

RUN chmod +x /etc/supervisord.conf
RUN chmod +x /etc/telegraf/telegraf.conf

EXPOSE 8086

CMD supervisord