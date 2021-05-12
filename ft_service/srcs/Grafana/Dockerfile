 FROM alpine:3.12

RUN apk update
RUN apk add --no-cache supervisor
RUN apk add --no-cache wget
#RUN apk add grafana --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community/ --allow-untrusted
RUN apk add telegraf --repository http://dl-cdn.alpinelinux.org/alpine/latest-stable/community/ --allow-untrusted

RUN wget https://dl.grafana.com/oss/release/grafana-7.4.1.linux-amd64.tar.gz
RUN tar -zxvf grafana-7.4.1.linux-amd64.tar.gz
RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.16.2_linux_amd64.tar.gz
RUN tar xf telegraf-1.16.2_linux_amd64.tar.gz

RUN mv grafana-7.4.1 grafana
RUN rm grafana-7.4.1.linux-amd64.tar.gz

#COPY /grafana.db /grafana/data/grafana.db
COPY /supervisord.conf /etc/supervisord.conf
COPY /telegraf.conf /etc/telegraf/telegraf.conf

RUN chmod +x /etc/supervisord.conf
RUN chmod +x /etc/telegraf/telegraf.conf

EXPOSE 3000

CMD supervisord