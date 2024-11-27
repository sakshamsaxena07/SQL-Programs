/*Creating Database*/
CREATE DATABASE company; 
/*Using Database*/  
USE company;

/*Creating the table*/
CREATE TABLE employees(
Id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100), 
position VARCHAR(100),
salary DECIMAL(10,2),
date_of_joining DATE);


/*Inserting the values*/
INSERT INTO employees(Id, name, position, salary, date_of_joining)
VALUES
(1,"John Doe","Manager",55000.00,"2020-01-15"),
(2,"Jane Smith","Developer",48000.00,"2019-07-10"),
(3,"Alice Johnson","Designer",45000.00,"2021-03-22"),
(4,"Bob Brown","Developer",50000.00,"2018-11-01");


/*We want to see the data of developers*/
SELECT*FROM employees WHERE position="Developer";

/*Changing Salary*/
UPDATE employees SET salary=46000.00 WHERE name="Alice Johnson";

/*Deleting a Bob Brown's data*/
DELETE FROM employees WHERE name="Bob Brown";

/*Checking the salary that is greater than 48,000*/
SELECT * FROM employees WHERE salary>48000;

/*Adding e-mail as a column*/
ALTER TABLE employees
ADD email_id VARCHAR(100) AFTER date_of_joining;

/*Adding values in e-mail*/
UPDATE employees SET email_id="john.doe@company.com" WHERE name = "John Doe";

/*Retrieve name and salary*/
SELECT name, salary FROM employees;

/*Counting number of employees who joined after January 1, 2020*/
SELECT * FROM employees COUNT WHERE date_of_joining > "2020-01-01";

/*Employees with their salaries in descending order*/
SELECT * FROM employees ORDER BY salary DESC;

/*Dropping the email column*/
ALTER TABLE employees DROP COLUMN email_id;

/*Employee with highest salary*/
SELECT name, salary FROM employees ORDER BY salary DESC LIMIT 1;

































