FROM debian
# Update packages & Install NGINX & PHP
RUN apt-get update && apt-get upgrade -y && apt-get install nginx -y && apt-get install zip unzip php-zip php-fpm php-mysql php-mbstring php-xml php-soap php-gd php-curl curl -y
# Install Composer
# RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
# Nginx config
# ADD nginx_default.conf /etc/nginx/sites-available/default

EXPOSE 80

COPY docker-entrypoint.sh /docker-entrypoint.sh

RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]