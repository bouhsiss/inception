--create the database
CREATE DATABASE wordpress;

-- create a user and grant him all the privileges on the database 'wordpress'
CREATE USER 'houda'@'%' IDENTIFIED BY 'thisisatest';
GRANT ALL PRIVILEGES ON wordpress.* TO 'houda'@'%';
FLUSH PRIVILEGES;

-- create a user and grant him the ability to select (READ) from all table withing the 'wordpress' database
CREATE USER 'hamid'@'%' IDENTIFIED BY 'hamidou3elal';
GRANT SELECT ON wordpress.* TO 'hamid'@'%';
FLUSH PRIVILEGES;

ALTER USER 'root'@'localhost' IDENTIFIED BY 'MyN3wP4ssw0rd';
FLUSH PRIVILEGES;