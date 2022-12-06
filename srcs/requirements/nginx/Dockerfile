FROM debian:buster
RUN apt-get -y update && apt-get -y install nginx
COPY default /etc/nginx/sites-available/default
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]