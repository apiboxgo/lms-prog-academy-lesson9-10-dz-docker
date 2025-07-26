# Install 
On an instance

A docker has been installed

```bash
git clone https://github.com/apiboxgo/lms-prog-academy-lesson9-10-dz-docker.git
````

```bash
docker compose up --build -d
````


# Update docker hub

## Nginx

````bash
docker build -t kostiagm/nginx-symfony:latest -f images/nginx/Dockerfile .
````
````bash
docker push kostiagm/nginx-symfony:latest
````

## Php

````bash
docker build -t kostiagm/php-symfony:latest -f images/php/Dockerfile .
````
````bash
docker push kostiagm/php-symfony:latest
````

## Postgres
````bash
docker build -t kostiagm/db-pg:latest -f images/postgres/Dockerfile .
````
````bash
docker push kostiagm/db-pg:latest
````

## Frontend

````bash
docker build -t kostiagm/frontend:latest -f images/frontend/Dockerfile .
````

````bash
docker push kostiagm/frontend:latest
````

## Build

````bash
docker compose down -v
````

````bash
docker compose up --build
````

## Info

Change ip
config/nginx/symfony.conf 
server_name: new-ip;

admin/src/App.tsx
entrypoint="http://new-ip/api"

Deploy

https://github.com/apiboxgo/lms-prog-academy-lesson9-10-dz-php/settings/secrets/actions

DB_PASSWORD: new-db-password

EC2_HOST: new-ip

EC2_KEY: aws-key

EC2_USER: ubuntu


https://github.com/apiboxgo/lms-prog-academy-lesson9-10-dz-pwa/settings/secrets/actions

EC2_HOST: new-ip

EC2_KEY: aws-key

EC2_USER: ubuntu
