FROM docker.io/bitnami/laravel:9
COPY ./src /app
RUN composer install -d /app
