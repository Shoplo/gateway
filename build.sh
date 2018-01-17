docker rm -f lua-nginx
docker build . -t lua-nginx
docker run -d --name lua-nginx -p 3333:80 -v "$(pwd)/www.conf:/etc/nginx/conf.d/default.conf" -v "$(pwd)/www:/var/www" -v "$(pwd)/auth:/var/auth" lua-nginx
docker exec lua-nginx /etc/init.d/php7.0-fpm start
