FROM hypriot/rpi-alpine-scratch

MAINTAINER Drakaka <DrakeriNproduction@gmail.com>

RUN apk update \
    && apk upgrade \
    && apk add nginx \
    && rm -rf /var/cache/apk/*

RUN rm /etc/nginx/nginx.conf

RUN chown -R nginx:www-data /var/lib/nginx

ADD root /

RUN mkdir /tmp/conf_override

VOLUME ["/tmp/conf_override"]

WORKDIR /etc/nginx

EXPOSE 80 443

CMD ["/bin/sh", "/start-nginx.sh"]
