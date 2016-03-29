FROM hypriot/rpi-alpine-scratch

MAINTAINER Drakaka <DrakeriNproduction@gmail.com>

RUN apk update \
    && apk upgrade \
    && apk add nginx \
    && rm -rf /var/cache/apk/*

RUN rm /etc/nginx/nginx.conf

RUN chown -R nginx:www-data /var/lib/nginx

ADD root /

EXPOSE 80 443

CMD ["nginx"]
