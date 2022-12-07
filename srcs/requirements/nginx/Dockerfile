FROM debian:buster
RUN apt-get -y update && apt-get -y install nginx && apt-get install openssl
RUN mkdir -p /etc/nginx/ssl-certs
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl-certs/inception.key -out /etc/nginx/ssl-certs/inception.crt -subj "/C=MA/ST=REHAMNA/L=BENGUERIR/O=1337/CN=hbouhsis.42.fr/emailAddress=test@hbouhsis.42.fr"
COPY default /etc/nginx/sites-enabled/default
CMD ["nginx", "-g", "daemon off;"]
