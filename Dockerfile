FROM docker.io/bitnami/laravel:9
COPY ./src /app
WORKDIR /app
RUN composer install -d /app
