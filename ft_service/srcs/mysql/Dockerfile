 FROM alpine:3.12

RUN apk update
RUN apk add --no-cache mysql 
RUN apk add --no-cache mysql-client
RUN apk add --no-cache supervisor
RUN apk add --no-cache openrc
RUN apk add --no-cache mariadb 
RUN apk add --no-cache mariadb-client
RUN apk add --no-cache libc6-compat
RUN apk add telegraf --repository http://dl-cdn.alpinelinux.org/alpine/latest-stable/community/ --allow-untrusted

RUN mkdir /run/mysqld

COPY /start_mysql.sh 	/start_mysql.sh
COPY /my.cnf 			/etc/my.cnf
COPY /supervisord.conf	/etc/supervisord.conf
COPY /telegraf.conf 	/etc/telegraf/telegraf.conf
COPY /createbase		/createbase
COPY /wp-db.sql 		/wp-db.sql

RUN chmod +x start_mysql.sh 
RUN chmod +x /run/mysqld
RUN chmod +x /etc/supervisord.conf
RUN chmod +x /etc/my.cnf

EXPOSE 3306

CMD ["sh", "start_mysql.sh"]