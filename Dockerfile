FROM openresty/openresty:xenial

RUN DEBIAN_FRONTEND=noninteractive \
    apt-get -y --force-yes update && \
    apt-get -y --force-yes install \
    php7.0 php-fpm nano

RUN echo "user  www-data;" >> /usr/local/openresty/nginx/conf/nginx.conf
