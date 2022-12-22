FROM debian:buster
RUN apt -y update \
    && apt -y install mariadb-server
COPY create_wp_db.sql /tmp/
RUN service mysql start && mysql < /tmp/create_wp_db.sql
CMD ["mysqld"]