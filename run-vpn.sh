#!/bin/bash
OCSERV_CONF_DIR=
RADCLI_CONF_DIR=
WIREGUARD_CONF_DIR=
OCSERV_PORT=
WIREGUARD_PORT=
DOCKER_IMAGE=
docker run --cap-add net_admin --cap-add sys_module \
  -v $OCSERV_CONF_DIR:/etc/ocserv -v $RADCLI_CONF_DIR:/etc/radcli -v $WIREGUARD_CONF_DIR:/etc/wireguard \
  -p $OCSERV_PORT:$OCSERV_PORT/tcp -p $OCSERV_PORT:$OCSERV_PORT/udp  -p $WIREGUARD_PORT:$WIREGUARD_PORT/udp \
  $DOCKER_IMAGE
