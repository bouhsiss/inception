# inception
this project consists of setting up an infrastructure composed of different services under specific rules.

## structure
  - A Docker container that contains NGINX with TLSv1.2 or TLSv1.3 only.
  - A Docker container that contains WordPress + php-fpm (it must be installed and
configured) only without nginx.
  - A Docker container that contains MariaDB only without nginx.
  - A volume that contains your WordPress database.
  - A second volume that contains your WordPress website files.
  - A docker-network that establishes the connection between your containers.
##  diagram of the expected result
 <img width="620" alt="Screen Shot 2023-01-02 at 3 19 36 PM" src="https://user-images.githubusercontent.com/85262731/210243635-e13a3d35-0aff-4cc5-b8a1-06e07fee8f50.png">
