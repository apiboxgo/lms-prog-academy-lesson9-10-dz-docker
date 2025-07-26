FROM nginx:stable-alpine

RUN apk add --no-cache bash
RUN rm /etc/nginx/conf.d/default.conf

COPY config/nginx/default.conf /etc/nginx/conf.d/default.conf

COPY www/ /var/www/html

RUN chown -R nginx:nginx /var/www/html

WORKDIR /var/www/html
CMD ["nginx", "-g", "daemon off;"]