


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