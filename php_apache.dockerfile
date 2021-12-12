FROM php:8.0.2-apache

RUN apt-get update && apt-get install -y \
    git

RUN docker-php-ext-install mysqli pdo pdo_mysql

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN composer --version

EXPOSE 80