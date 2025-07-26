FROM php:8.2-fpm

RUN apt-get update && apt-get install -y \
    git unzip libicu-dev libzip-dev libpng-dev libjpeg-dev libfreetype6-dev \
    libonig-dev libxml2-dev libpq-dev curl wget gnupg2

RUN docker-php-ext-configure gd --with-freetype --with-jpeg && \
    docker-php-ext-install \
        intl \
        zip \
        pdo \
        pdo_pgsql \
        opcache \
        gd \
        xml

COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# (опционально) Symfony CLI
# RUN wget https://get.symfony.com/cli/installer -O - | bash && \
#     mv /root/.symfony*/bin/symfony /usr/local/bin/symfony

WORKDIR /var/www/html

RUN curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer \
    && chmod +x /usr/local/bin/composer


COPY images/php/entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
