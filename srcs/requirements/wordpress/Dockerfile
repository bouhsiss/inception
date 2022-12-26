FROM debian:buster
RUN apt-get -y update
RUN apt-get -y install php \
    php-fpm \
    php-mysqli \
    unzip \
    wget \
    git -y
RUN wget https://wordpress.org/latest.tar.gz
RUN tar -xzvf latest.tar.gz
RUN mkdir -p /var/www/html
RUN mv wordpress /var/www/html
COPY wp-config-sample.php /var/www/html/wordpress/wp-config.php
COPY www.conf /etc/php/7.3/fpm/pool.d/www.conf
RUN chown -R www-data:www-data /var/www/html/wordpress
RUN mkdir -p /run/php
RUN service php7.3-fpm restart
CMD php-fpm7.3 -F