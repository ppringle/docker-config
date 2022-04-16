-- create database store_db;
CREATE USER 'store_user'@'%' IDENTIFIED WITH mysql_native_password BY 'store';
GRANT ALL ON `store_db`.* TO 'store_user'@'%';
FLUSH PRIVILEGES;