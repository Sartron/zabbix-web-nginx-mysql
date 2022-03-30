# zabbix-web-nginx-mysql
This is a patched version of the Docker image [zabbix-web-nginx-mysql:alpine-6.0-latest](https://github.com/zabbix/zabbix-docker/tree/6.0/Dockerfiles/web-nginx-mysql/alpine) that is configured to have PHP-FPM bound to an address (`0.0.0.0:9000`) rather than a socket. This can be useful in a scenario where other services such as NGINX need access to PHP-FPM but cannot be configured to have access to the containerized PHP-FPM socket file.

# CI/CD
[![pipeline status](https://git.xtnet.link/angel/zabbix-web-nginx-mysql/badges/main/pipeline.svg)](https://git.xtnet.link/angel/zabbix-web-nginx-mysql/-/commits/main)  

Image builds are pushed to the [container registry](https://git.xtnet.link/angel/zabbix-web-nginx-mysql/container_registry) upon successful job completion within the `main` branch.
