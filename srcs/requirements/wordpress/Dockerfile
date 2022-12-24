FROM debian:buster
RUN apt-get -y update
RUN apt-get -y install php \
    php-fpm \
    unzip \
    wget \
    git -y
RUN wget https://wordpress.org/latest.tar.gz
RUN tar -xzvf latest.tar.gz
RUN mkdir -p /var/www/html
RUN mv wordpress /var/www/html
COPY wp-config-sample.php /var/www/html/wp-config.php
RUN chown -R www-data:www-data /var/www/html/wordpress
RUN mkdir -p /run/php
CMD php-fpm7.3 -F