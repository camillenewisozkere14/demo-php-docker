FROM php:8.0-apache

RUN groupadd cnb --gid 1000 && \
  useradd --uid 1000 --gid 1000 -m -s /bin/bash cnb
USER 1000:1000

WORKDIR /var/www/html

COPY . .
EXPOSE 80
