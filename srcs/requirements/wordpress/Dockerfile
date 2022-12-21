FROM debian:buster
RUN apt-get update \
    && apt-get install -y php php-fpm wget
RUN wget https://wordpress.org/latest.tar.gz
RUN tar -xzvf latest.tar.gz
