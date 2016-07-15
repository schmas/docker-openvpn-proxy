# OpenVPN Client + Squid Proxy
#
# Version 0.0.1
#
# Using my dceschmidt/openvpn-client image as base
# CMD has been defined in base image

FROM dceschmidt/openvpn-client:latest
MAINTAINER Diego Schmidt <dceschmidt@gmail.com>

# Evironment variables
ENV DEBIAN_FRONTEND=noninteractive

## Update packages and install software
RUN apt-get update  \
    && apt-get install -y squid3 \
    && mv -f /etc/squid/squid.conf /etc/squid/squid.conf.original \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD squid/ /etc/squid/

EXPOSE 3128

RUN chmod +x /etc/squid/squid-*.sh \
    && mkdir -p /etc/service/squid \
    && ln -s /etc/squid/squid-run.sh /etc/service/squid/run \
    && ln -s /etc/squid/squid-finish.sh /etc/service/squid/finish
