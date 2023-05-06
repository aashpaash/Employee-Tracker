-- Table structure
DROP DATABASE IF EXISTS eTracker_db;
CREATE DATABASE eTracker_db;

USE eTracker_db;
-- Create table
CREATE TABLE department (
    id INT PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(30) NOT NULL
)

-- Employee table
CREATE TABLE employee (
  id INT PRIMARY KEY NOT NULL AUTOINCREMENT,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT AUTO_INCREMENT,
  manager_id INT DEFAULT NULL,
  FOREIGN KEY (role_id) REFERENCES role(id),
  FOREIGN KEY (manager_id) REFERENCES employee(id)
);

-- Role table
CREATE TABLE role (
  id INT PRIMARY KEY NOT NULL AUTOINCREMENT,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL,
  department_id INT NOT NULL,
  FOREIGN KEY (department_id) 
  REFERENCES department(id)
);
