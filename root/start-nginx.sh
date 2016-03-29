#!/bin/sh

#Checks if configuration is overriden before starting Nginx

NGINX="/etc/nginx"
OVERRIDE="/tmp/conf_override"

CONFIG="nginx.conf"
VHOSTS="conf.d"
FILES="/var/www"

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

#Symlink websites files
if [[ -d "$OVERRIDE/$FILES" ]]; then
  rm -rf "$FILES"
  ln -s "$OVERRIDE/$FILES" "$FILES"
fi

exec nginx
