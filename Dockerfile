FROM debian:latest
MAINTAINER Maximilien Richer <me@mricher.fr>
EXPOSE 8000/tcp
VOLUME ["/config"]

ENV WORKERS 2
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q && \
    apt-get install -y --no-install-recommends \
         libapache2-mod-php7.0 \
         php7.0-cli \
         php7.0-mysql \
         php7.0-mysqli \
         php7.0-gd \
         php7.0-mcrypt \
         php7.0-json \
         php-pear \
         snmp \
         fping \
         mysql-client \
         python-mysqldb \
         rrdtool \
         subversion \
         whois \
         mtr-tiny \
         ipmitool \
         graphviz \
         imagemagick \
         wget \
         nginx \
         php7.0-fpm

COPY nginx/observium.conf /etc/nginx/conf.d


