FROM docker.io/zabbix/zabbix-web-nginx-mysql:alpine-6.0-latest
USER 0

COPY nginx_conf.patch \
    nginx_ssl_conf.patch \
    zabbix_conf.patch \
    /tmp/
RUN apk add patch \
    && patch /etc/zabbix/nginx.conf /tmp/nginx_conf.patch \
    && patch /etc/zabbix/nginx_ssl.conf /tmp/nginx_ssl_conf.patch \
    && patch /etc/php7/php-fpm.d/zabbix.conf /tmp/zabbix_conf.patch \
    && rm -f /tmp/*.patch

USER 1997
