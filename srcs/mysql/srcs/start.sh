#!bin/sh

openrc default

/etc/init.d/mariadb setup

rc-service mariadb start

mysql -u root mysql < mysql_conf.sql
mysql -u root wphylici < wphylici.sql

rc-service mariadb stop

/usr/bin/supervisord -c /etc/supervisord.conf
