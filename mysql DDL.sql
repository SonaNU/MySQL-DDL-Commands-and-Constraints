CREATE DATABASE employee;
USE employee;
CREATE TABLE Departments (department_id INT,department_name VARCHAR(100));
CREATE TABLE Location (location_id INT,location_name VARCHAR(100));
CREATE TABLE Employees (employee_id INT,employee_name VARCHAR(100),age INT,gender CHAR(1),
designation VARCHAR(50),hire_date DATE,department_id INT,location_id INT);
ALTER TABLE Employees ADD email VARCHAR(100);
ALTER TABLE Employees MODIFY designation VARCHAR(150);
ALTER TABLE Employees DROP COLUMN age;
ALTER TABLE Employees RENAME COLUMN hire_date TO date_of_joining;
RENAME TABLE Departments TO Departments_Info;
RENAME TABLE Location TO Locations;
TRUNCATE TABLE Employees;
DROP TABLE Employees;
DROP DATABASE employee;


DROP DATABASE IF EXISTS employee;
CREATE DATABASE employee;
USE employee;
CREATE TABLE Departments (department_id INT PRIMARY KEY,
department_name VARCHAR(100) NOT NULL UNIQUE);
INSERT INTO Departments VALUES (1, 'HR');
INSERT INTO Departments VALUES (2, 'Finance');
INSERT INTO Departments VALUES (3, 'HR');
CREATE TABLE Location (location_id INT AUTO_INCREMENT PRIMARY KEY,
location_name VARCHAR(100) NOT NULL UNIQUE);
INSERT INTO Location (location_name) VALUES ('Kochi');
INSERT INTO Location (location_name) VALUES ('Bangalore');
INSERT INTO Location (location_name) VALUES ('Chennai');
CREATE TABLE Employees (employee_id INT PRIMARY KEY,employee_name VARCHAR(100) NOT NULL,
age INT CHECK (age >= 18),gender CHAR(1) CHECK (gender IN ('M', 'F')),designation VARCHAR(150),
hire_date DATE DEFAULT (CURRENT_DATE),department_id INT,location_id INT,
FOREIGN KEY (department_id)REFERENCES Departments(department_id),
FOREIGN KEY (location_id)REFERENCES Location(location_id));

INSERT INTO Departments VALUES (1, 'HR'),(2, 'Finance'),(3, 'IT');
INSERT INTO Location (location_name) VALUES ('Kochi'), ('Bangalore'),('Chennai');
INSERT INTO Employees(employee_id, employee_name, age, gender, designation,department_id, location_id)
VALUES (101, 'Anu', 24, 'F', 'Analyst', 1, 1),(102, 'Rahul', 26, 'M', 'Developer', 3, 2),
(103, 'Priya', 23, 'F', 'HR Executive', 1, 3);

SELECT * FROM Departments;
SELECT * FROM Location;
SELECT * FROM Employees;

