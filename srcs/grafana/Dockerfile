# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wphylici <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/01 02:26:37 by wphylici          #+#    #+#              #
#    Updated: 2020/12/01 11:44:42 by wphylici         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#OS
FROM alpine:latest

#install
RUN apk add telegraf --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted
RUN apk add grafana --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted
RUN apk add supervisor

#grafana
COPY ./srcs/grafana.db /usr/share/grafana/data/grafana.db

#telegraf
RUN mkdir -p /etc/telegraf
COPY ./srcs/telegraf.conf /etc/telegraf/telegraf.conf

COPY ./srcs/supervisord.conf /etc/supervisord.conf

EXPOSE 3000

CMD ["/usr/bin/supervisord"]