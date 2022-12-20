--create the database
CREATE DATABASE WordPress;

-- create a user and grant him all the privileges on the database 'wordpress'
CREATE USER 'houda'@'localhost' IDENTIFIED BY 'thisisatest';
GRANT ALL PRIVILEGES ON wordpress.* TO 'houda'@'localhost';
-- create a user and grant him the ability to select (READ) from all table withing the 'wordpress' database
CREATE USER 'hamid'@'localhost' IDENTIFIED BY 'hamidou3elal';
GRANT SELECT ON wordpress.* TO 'hamid'@'localhost';