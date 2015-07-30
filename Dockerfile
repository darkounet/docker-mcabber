# Jessie Dockerfile
# with mcabber package
# Small XMPP console client
# http://lilotux.net/~mikael/mcabber/

FROM debian:jessie

MAINTAINER Antoine GUEVARA <me@antoine-guevara.fr>

ENV HOSTNAME mcabber.docker.lan
ENV DEBIAN_FRONTEND noninteractive
ENV SHELL /bin/bash

RUN useradd -ms /bin/bash mcabber_client

RUN apt-get update

RUN apt-get install -y -qq mcabber

RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

VOLUME ["/home/mcabber_client/"]
