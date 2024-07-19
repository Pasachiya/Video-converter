

-- Create a new user and grant privileges
CREATE USER 'auth_user'@'localhost' IDENTIFIED BY 'Aauth123';

CREATE DATABASE auth;

-- Grant all privileges on the 'auth' database to 'auth_user'@'localhost'
GRANT ALL PRIVILEGES ON auth.* TO 'auth_user'@'localhost';

-- Switch to the 'auth' database
USE auth;

-- Create a 'user' table with necessary columns
CREATE TABLE user (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

-- Insert a sample user into the 'user' table
INSERT INTO user (email, password) VALUES ('pasachiya2@gmail.com', 'Admin123');
