-- Drop the database if it exists to start fresh
DROP DATABASE IF EXISTS employee_db;

-- Create a new database named 'employee_db'
CREATE DATABASE employee_db;

-- Switch to using the 'employee' database
USE employee;

-- Table to store information about departments
CREATE TABLE department (
    id INT unsigned AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) UNIQUE NOT NULL
);

-- Table to store information about roles within departments
CREATE TABLE role (
    id INT unsigned AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30) UNIQUE NOT NULL,
    salary DECIMAL UNSIGNED NOT NULL,
    department_id INT unsigned NOT NULL,
    INDEX dep_ind (department_id),
    CONSTRAINT fk_departmentFOREIGN FOREIGN KEY (department_id) REFERENCES department (id) ON DELETE CASCADE
);

-- Table to store information about employees
CREATE TABLE employee (
    id INT unsigned AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT unsigned NOT NULL,
    manager_id INT unsigned,
    INDEX role_ind (role_id),
    INDEX manager_ind (manager_id),
    CONSTRAINT fk_role FOREIGN KEY (role_id) REFERENCES role(id) ON DELETE CASCADE,
    CONSTRAINT fk_manager FOREIGN KEY (manager_id) REFERENCES employee (id) ON DELETE SET NULL
);