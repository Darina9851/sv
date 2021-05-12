#!/bin/sh

#/usr/bin/mysql_install_db --user=mysql --datadir="/var/lib/mysql"
#/usr/bin/mysqld_safe --datadir="/var/lib/mysql"

#mysql_install_db --user=mysql --datadir=/var/lib/mysql
#mysqld & sleep 5

#mysql < /mysql-svc.sql
#pkill mysqld & sleep 5

#echo "CREATE USER 'admin'@'%' IDENTIFIED BY '1111';" |
#echo "CREATE DATABASE IF NOT EXISTS `wordpress` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;" |
#echo "GRANT ALL ON *.* TO 'admin'@'%';" |
#echo "FLUSH PRIVILEGES;" |

openrc default
rc-service mariadb setup
rc-service mariadb start

mysql -u root mysql < createbase
mysql -u root wordpress < wp-db.sql

rc-service mariadb stop
exec /usr/bin/mysqld_safe

supervisord