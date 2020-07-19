FROM php:7.4-cli

ADD https://raw.githubusercontent.com/mlocati/docker-php-extension-installer/master/install-php-extensions /usr/local/bin/
ADD https://getcomposer.org/download/1.10.9/composer.phar /usr/local/bin/composer

RUN chmod uga+x /usr/local/bin/install-php-extensions /usr/local/bin/composer && sync && install-php-extensions rdkafka
RUN install-php-extensions zip opcache redis mongodb pdo_mysql pdo_pgsql