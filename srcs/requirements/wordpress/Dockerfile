FROM debian:buster
RUN apt-get -y update
RUN apt-get -y install php \
    php-fpm \
    php-mysqli \
    wget \
    php-common \
    curl \
    sudo \
    php-xml
RUN wget https://wordpress.org/latest.tar.gz
RUN tar -xzvf latest.tar.gz
RUN chown -R www-data:www-data wordpress
RUN mkdir -p /var/www/html
RUN mv wordpress /var/www/html
COPY wp-config-sample.php /var/www/html/wordpress/wp-config.php
COPY www.conf /etc/php/7.3/fpm/pool.d/www.conf
RUN chmod 777 /var/www/html/wordpress/wp-config.php
RUN mkdir -p /run/php
COPY install-wp.sh .
RUN chmod +x install-wp.sh
RUN service php7.3-fpm restart
CMD sh install-wp.sh && php-fpm7.3 -F