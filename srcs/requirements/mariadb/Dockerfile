FROM debian:buster
RUN apt-get -y update \
    && apt-get -y install mariadb-server && service mysql start
EXPOSE 3306
CMD ["mysqld"]