-- drop old
DROP USER IF EXISTS 'mollyapp'@'localhost';
DROP USER IF EXISTS 'mollyadmin'@'localhost';
DROP DATABASE IF EXISTS mollycat;

-- creat new
CREATE USER 'mollyapp'@'localhost' IDENTIFIED BY 'mollyapppass';
CREATE USER 'mollyadmin'@'localhost' IDENTIFIED BY 'mollyadminpass';
CREATE DATABASE mollycat;

-- update permissions
GRANT SELECT,UPDATE ON mollycat.* TO 'mollyapp'@'localhost';
GRANT ALL ON mollycat.* TO 'mollyadmin'@'localhost';
