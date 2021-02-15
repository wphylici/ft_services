#OS
FROM alpine:latest

#install
RUN apk update && apk upgrade
RUN apk add openrc mysql mysql-client supervisor
RUN apk add telegraf --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted

#telegraf
RUN mkdir -p /etc/telegraf
COPY ./srcs/telegraf.conf /etc/telegraf/telegraf.conf

RUN mkdir /run/mysqld
RUN chown -R mysql /run/mysqld

COPY ./srcs/wphylici.sql wphylici.sql
COPY ./srcs/my.cnf /etc/my.cnf
COPY ./srcs/mysql.sql mysql_conf.sql

COPY ./srcs/supervisord.conf /etc/supervisord.conf

COPY ./srcs/start.sh /tmp/
RUN chmod +x /tmp/start.sh

EXPOSE 3306

CMD ["sh","/tmp/start.sh"]
