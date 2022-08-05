FROM docker.io/bitnami/laravel:9
COPY ./app /app/app
COPY ./bootstrap /app/bootstrap
COPY ./database /app/database
COPY ./public /app/public
COPY ./resources /app/resources
COPY ./routes /app/routes
COPY ./storage /app/storage
COPY .env /app/.env
COPY artisan /app/artisan
COPY composer.json /app/composer.json
COPY composer.lock /app/composer.lock

WORKDIR /app
RUN ls -lah /app
RUN composer install -d /app
