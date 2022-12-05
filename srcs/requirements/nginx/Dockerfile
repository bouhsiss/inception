FROM debian:buster
RUN apt-get -y update && apt-get -y install ngnix
COPY default /etc/nginx/sites-available/default
EXPOSE 80/tcp
CMD ["/usr/sbin/ngnix", "-g", "daemon off;"]