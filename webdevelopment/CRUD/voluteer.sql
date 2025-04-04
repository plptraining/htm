CREATE DATABASE volunteer_platform;

USE volunteer_platform;

CREATE TABLE guardians (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL,
  password VARCHAR(255) NOT NULL
);

CREATE TABLE children (
  id INT AUTO_INCREMENT PRIMARY KEY,
  guardian_id INT,
  name VARCHAR(100) NOT NULL,
  age INT CHECK (age BETWEEN 7 AND 12),
  activities TEXT,
  FOREIGN KEY (guardian_id) REFERENCES guardians(id) ON DELETE CASCADE
);
--resolving git