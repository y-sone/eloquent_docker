CREATE DATABASE eloquent_test;
USE eloquent_test;
CREATE TABLE users
(
    id       INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name     VARCHAR(30) NOT NULL,
    email    VARCHAR(50),
    reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
INSERT INTO users (name, email) VALUES ('John Doe', 'john@example.com');
INSERT INTO users (name, email) VALUES('Jane Doe', 'jane@example.com');
