FROM ubuntu:14.04

ARG APT_LINK=http://ftp.riken.jp/Linux/ubuntu/
RUN sed -i "s-$(cat /etc/apt/sources.list | grep -v "#" | cut -d " " -f 2 | grep -v "security" | sed "/^$/d" | sed -n 1p)-${APT_LINK}-g" /etc/apt/sources.list

RUN apt-get update \
	&& apt-get install -y gcc=4:4.8.2-1ubuntu6