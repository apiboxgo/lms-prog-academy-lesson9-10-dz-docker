#!/bin/sh
set -e

composer install --no-interaction --prefer-dist

php bin/console doctrine:migrations:migrate --no-interaction

exec php-fpm
