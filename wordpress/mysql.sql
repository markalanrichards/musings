CREATE DATABASE example_wordpress CHARACTER SET utf8 COLLATE utf8_bin;
CREATE USER 'wordpress'@'%' IDENTIFIED BY 'wordpress';
GRANT ALL PRIVILEGES ON example_wordpress.* TO 'wordpress'@'%' WITH GRANT OPTION;
CREATE USER 'wordpress'@'localhost' IDENTIFIED BY 'wordpress';
GRANT ALL PRIVILEGES ON example_wordpress.* TO 'wordpress'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;
