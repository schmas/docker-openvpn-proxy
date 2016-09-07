[![](https://images.microbadger.com/badges/version/dceschmidt/openvpn-proxy.svg)](https://hub.docker.com/r/dceschmidt/openvpn-proxy)
[![](https://images.microbadger.com/badges/image/dceschmidt/openvpn-proxy.svg)](https://hub.docker.com/r/dceschmidt/openvpn-proxy)

# docker-openvpn-proxy
Docker OpenVPN Client and Squid Proxy Server

## Run container from Docker registry
To run the container use this command:

```
$ docker run --privileged  -d \
              -e "OPENVPN_PROVIDER=PIA" \
              -e "OPENVPN_CONFIG=Netherlands" \
              -e "OPENVPN_USERNAME=user" \
              -e "OPENVPN_PASSWORD=pass" \
              -p 1022:22 \
              -p 3128:3128 \
              dceschmidt/openvpn-proxy
```

Now you can connect your application to a proxy `localhost:3128`.


## OpenVPN configuration
All OpenVPN configuration are explained at [schmas/docker-openvpn-client](https://github.com/schmas/docker-openvpn-client).
