#!/bin/sh

#Checks if configuration is overriden before starting Nginx

NGINX="/etc/nginx"
OVERRIDE="/tmp/conf_override"

CONFIG="nginx.conf"
VHOSTS="conf.d"

cd "$NGINX"

#Symlink virtual hosts directory

if [[ -d "$OVERRIDE/$VHOSTS" ]]; then
  rm -rf "$VHOSTS"
  ln -s "$OVERRIDE/$VHOSTS" "$VHOSTS"
fi

#Symlink config file

if [[ -f "$OVERRIDE/$CONFIG" ]]; then
  rm -f "$CONFIG"
  ln -s "$OVERRIDE/$CONFIG" "$CONFIG"
fi

exec nginx
