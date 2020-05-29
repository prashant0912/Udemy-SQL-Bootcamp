SHOW DATABASES; 

CREATE DATABASE employees_data;

USE employees_data;

CREATE TABLE employees(
id_no INT NOT NULL AUTO_INCREMENT,
last_name VARCHAR(20) NOT NULL,
first_name VARCHAR(20) NOT NULL,
middle_name VARCHAR(20),
age INT NOT NULL,
current_status VARCHAR(20) DEFAULT "EMPLOYED",
primary key(id_no));

DESC employees;

INSERT INTO employees(last_name, first_name,  middle_name,age, current_status)
 VALUES("MAURYA","PRASHANThi","KUMAR",21, "Biradri Pass");
 
SELECT*FROM employees;



