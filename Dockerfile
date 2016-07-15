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
#RUN apt-get update \
#    && apt-get install -y openvpn inetutils-traceroute inetutils-ping wget curl \
#    && curl -L https://github.com/jwilder/dockerize/releases/download/v0.2.0/dockerize-linux-amd64-v0.2.0.tar.gz | tar -C /usr/local/bin -xzv \
#    && rm -rfv dockerize-linux-amd64-v0.2.0.tar.gz \
#    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \