CREATE DATABASE employees2;

USE employees2;

CREATE TABLE staff(
emp_id INT,
first_name VARCHAR(50),
last_name VARCHAR(50),
department VARCHAR(50),
salary INT,
hire_date DATE);

SELECT * FROM staff;

INSERT INTO staff(emp_id,first_name,last_name,department,salary,hire_date)VALUES
(1,"John","Doe","IT",60000.00,'2019-01-10'),
(2,"Jane","Smith","HR",55000.00,'2018-03-05'),
(3,"Emily","Jones","IT",62000.00,'2020-07-23'),
(4,"Michael","Brown","FINANCE",70000.00,'2016-05-14'),
(5,"Sarah","Davis","FINANCE",69000.00,'2017-11-18'),
(6,"David","Johnson","HR",48000.00,'2021-09-10');

/*Find the average salary of employees in each department.*/
SELECT department,AVG(salary) AS "Average Salary" from staff GROUP BY department;

/*Find the total number of employees hired after 2019.*/
SELECT DISTINCT COUNT(hire_date) AS "Employees hired after 2019" FROM staff WHERE hire_date > "2019-01-10";

/*List the departments and the total salary of all employees in each department, ordered by the total salary.*/
SELECT department,SUM(salary) AS "Total salary in each department" FROM staff GROUP BY department ORDER BY SUM(salary) ASC;

/*Find the highest salary in the Finance department.*/
SELECT department,MAX(salary) AS "Highest Salary" FROM staff WHERE department="finance";

/*Get the top 3 highest-paid employees.*/
SELECT first_name,max(salary) AS "Highest Paid Employee " FROM staff GROUP BY first_name ORDER BY MAX(salary) DESC LIMIT 3;

/*Find the department with the minimum average salary.*/  
SELECT department,AVG(salary) AS "Minimum Average Salary" FROM staff GROUP BY department ORDER BY AVG(salary) ASC LIMIT 1;

/*Display the total number of employees in each department, ordered by the number of employees.*/
SELECT department,COUNT(emp_id) AS "Total no. of employees in each department" FROM staff GROUP BY department ORDER BY COUNT(emp_id) ASC;

/*Find the average salary of employees who were hired before 2020.*/  
SELECT hire_date, AVG(salary) AS "Employees hired after 2020" FROM staff GROUP BY hire_date HAVING hire_date < "2020-01-01";

/*List the names of employees in the IT department ordered by hire date, with the most recently hired employees first.*/
SELECT first_name,hire_date AS "Most recently hired employee in it department" FROM staff WHERE hire_date IN(SELECT MAX(hire_date)FROM staff WHERE department ="IT");

/*Find the sum of salaries for all employees hired after January 1, 2019, ordered by salary.*/
SELECT SUM(salary) AS "Sum of salary hired after 1 Januaury" FROM staff WHERE hire_date>"2019-01-01" ORDER BY SUM(salary) ASC;

/*Get the employee with the lowest salary in the HR department.*/ 
SELECT first_name, last_name, salary FROM staff WHERE salary IN(SELECT MIN(salary) FROM staff WHERE department="HR");
 
/*Find the total salary paid to employees in each department, but limit the result to the top 2 highest-paying departments.*/ 
SELECT department,SUM(salary) AS "Total Salary Paid" FROM staff GROUP BY department ORDER BY SUM(salary) DESC LIMIT 2;

/*List all employees hired after 2018, ordered by salary, and show only the first 4 employees.*/ 
SELECT first_name,last_name,hire_date AS "Employees hired after 2018" FROM staff WHERE hire_date>"2018-01-01" ORDER BY salary ASC LIMIT 4;
 
/*find the highest salary in the IT department, but limit the results to the top 1 result.*/  
SELECT MAX(salary) AS "Highest Salary" FROM staff WHERE department="IT" ORDER BY MAX(salary) DESC LIMIT 1;
 
/*Get the average salary of employees in each department and list only departments with an average salary greater than $60,000.*/ 
SELECT department,AVG(salary) AS "Avg Salary in each department" FROM staff GROUP BY department HAVING AVG(salary) >60000;
  

