FROM webdevops/php-nginx:7.3
COPY ./src /app
RUN composer1 install -d /app
