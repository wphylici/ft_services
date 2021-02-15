# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wphylici <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/01 02:26:37 by wphylici          #+#    #+#              #
#    Updated: 2020/12/01 12:31:28 by wphylici         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#OS
FROM alpine:latest

#install
RUN apk update && apk upgrade
RUN apk add influxdb supervisor
RUN apk add telegraf --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/

#copy config
RUN mkdir -p /etc/telegraf
COPY ./srcs/telegraf.conf /etc/telegraf/telegraf.conf

COPY ./srcs/supervisord.conf /etc/supervisord.conf

EXPOSE 8086
CMD ["/usr/bin/supervisord"]