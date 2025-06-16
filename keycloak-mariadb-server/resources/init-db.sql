CREATE DATABASE keycloak;
CREATE DATABASE c_keycloak_storage;
CREATE TABLE c_keycloak_storage.access_token_storage (
    storage_id INT AUTO_INCREMENT,
    username VARCHAR(255),
    access_token LONGTEXT,
    user_ip_addr VARCHAR(255),
    expiry_interval int DEFAULT 3600 COMMENT 'Unit: Second',
    is_active tinyint DEFAULT 1,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(storage_id)
);
