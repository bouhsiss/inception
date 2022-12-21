# use a debian image as a base image
FROM debian:buster
# install nginx and openssl packages
RUN apt-get -y update \
    && apt-get -y install nginx \
    && apt-get install openssl
# create a folder for the openssl certificates 
RUN mkdir -p /etc/nginx/ssl-certs
# generate a self-assigned ssl/tls certificate. 
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl-certs/nginx.key -out /etc/nginx/ssl-certs/nginx.crt -subj "/C=MA/ST=REHAMNA/L=BENGUERIR/O=1337/CN=hbouhsis.42.fr/emailAddress=test@hbouhsis.42.fr"
# copying the new nginx default configuration file
COPY default /etc/nginx/sites-enabled/default
# start the nginx web server as a foreground process
CMD ["nginx", "-g", "daemon off;"]
