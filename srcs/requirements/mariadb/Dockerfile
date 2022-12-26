# use a debian image as a base image
FROM debian:buster
# install mariadb server
RUN apt-get -y update \
    && apt-get -y install mariadb-server
# copy the .sql script to /tmp folder
COPY create_wp_db.sql /tmp/
COPY 50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
# start the mariadb/mysql service and redirect the output of the script file into the mysql command line
# RUN chmod 777 /var/lib/mysql
RUN service mysql start && mysql < /tmp/create_wp_db.sql
# run mysql server in the backgroun as a daenon process 
CMD ["mysqld"]