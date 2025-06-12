CREATE USER 'root'@'%' IDENTIFIED BY 'admin';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%';
CREATE USER 'keycloak'@'%' IDENTIFIED BY 'keycloak';
GRANT ALL PRIVILEGES ON *.* TO 'keycloak'@'%';
FLUSH PRIVILEGES;