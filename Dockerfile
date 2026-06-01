FROM php:8.5-fpm-alpine

RUN addgroup -g 1000 www-data-group && adduser -u 1000 -G www-data-group -D swww-data || true

RUN apk add --no-cache \
    nginx \
    shadow \
    curl \
    libpng-dev \
    libjpeg-turbo-dev \
    freetype-dev \
    zip \
    libzip-dev \
    unzip \
    git \
    bash \
    oniguruma-dev

RUN docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install pdo_mysql mbstring zip exif pcntl gd

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR /var/www

COPY . /var/www

COPY ./nginx.conf /etc/nginx/nginx.conf

RUN composer install --no-interaction --prefer-dist --optimize-autoloader --no-dev

RUN chown -R swww-data:www-data /var/www/storage /var/www/bootstrap/cache

EXPOSE 80

CMD ["sh", "-c", "nginx && php-fpm"]