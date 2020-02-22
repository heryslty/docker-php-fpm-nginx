FROM php:fpm

MAINTAINER Heri Sulistiyo <hery1923@gmail.com>

WORKDIR /var/www

RUN apt-get update -y \
    && apt-get install -y nginx\
    && docker-php-ext-install pdo_mysql

COPY . .

RUN mv entrypoint.sh /entrypoint.sh\
&& chmod +x /entrypoint.sh\
&& mv nginx.conf /etc/nginx/sites-available/default

EXPOSE 80

ENTRYPOINT [ "/entrypoint.sh" ]
