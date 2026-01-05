create database practice_sql;
use practice_sql;
CREATE TABLE department (dept_id INT PRIMARY KEY,dept_name VARCHAR(50) UNIQUE NOT NULL);
INSERT INTO department VALUES
(10, 'IT'),
(20, 'HR'),
(30, 'Finance'),
(40, 'Sales');
CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL,
    salary INT CHECK (salary >= 10000),
    city VARCHAR(30) DEFAULT 'Hyderabad',
    email VARCHAR(100) UNIQUE,
    dept_id INT,
    join_date DATE,
    FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);
INSERT INTO employee VALUES
(1, 'Rakesh', 50000, 'Hyderabad', 'rakesh@gmail.com', 10, '2022-01-10'),
(2, 'Manisha', 45000, 'Delhi', 'manisha@gmail.com', 20, '2021-03-15'),
(3, 'Amit', 60000, 'Mumbai', 'amit@gmail.com', 10, '2020-06-20'),
(4, 'Neha', 55000, 'Hyderabad', 'neha@gmail.com', 30, '2023-02-05'),
(5, 'Rahul', 48000, 'Mumbai', 'rahul@gmail.com', 20, '2022-11-12'),
(6, 'Sneha', 52000, 'Pune', 'sneha@gmail.com', 40, '2021-09-01'),
(7, 'Kiran', 40000, 'Hyderabad', 'kiran@gmail.com', 10, '2020-12-10'),
(8, 'Pooja', 35000, 'Delhi', 'pooja@gmail.com', 30, '2023-05-18'),
(9, 'Vikram', 70000, 'Bangalore', 'vikram@gmail.com', 10, '2019-07-07'),
(10, 'Anita', 30000, 'Chennai', 'anita@gmail.com', 40, '2024-01-01');
-- Display all employees
select * from employee;
-- Display only emp_name and salary
select emp_name, salary from employee;
-- Display employees from Hyderabad
select * from employee where city = 'hyderabad';
-- Display employees with salary > 50000
select * from employee where salary > 50000;
-- Display employees from Mumbai or Delhi
select * from employee where city = 'mumbai' or city = 'delhi';
-- Display employees NOT from Hyderabad
select * from employee where city <> 'hyderabad';
-- Display unique cities
select distinct city from employee;
-- Display employees ordered by salary
select * from employee order by salary; -- ascending
select * from employee order by salary desc;  -- descnding
-- Display top 3 employees
select * from employee order by salary desc limit 3;
-- Count total employees
select count(*) from employee;
-- Employees with salary between 40k and 60k
select * from employee where salary between 40000 and 60000 order by salary desc;
-- Employees whose name starts with ‘R’ 
select * from employee where emp_name like'r%';
-- Employees whose name ends with ‘a’
select * from employee where emp_name like '%a';
-- Employees whose name contains ‘e’
select * from employee where emp_name like '%e%';
-- Employees whose salary != 45000
select * from employee where salary != 45000;
-- Employees working in IT department
select * from employee where dept_id = 10;
-- Employees NOT working in HR
select * from employee;
-- Employees joined after 2021
SELECT *
FROM employee
WHERE join_date > '2021-12-31';
-- Employees from Hyderabad with salary > 45000
select * from employee where city = 'Hyderabad' and salary > 45000;
-- Employees from Mumbai ordered by salary desc
select * from employee where city = 'mumbai' order by salary desc;
-- Display second highest salary
SELECT emp_name,salary
FROM employee
WHERE salary < (SELECT MAX(salary) FROM employee)
ORDER BY salary DESC
LIMIT 1;
-- Find MAX salary
select max(salary) from employee;
-- Find MIN salary
select min(salary) from employee;
-- Find AVG salary
select avg(salary) from employee;
-- Find total salary expense
select sum(salary) from employee;
-- Count employees in each city
SELECT city, COUNT(*) 
FROM employee
GROUP BY city;
-- Count employees in each department
SELECT dept_id, COUNT(*) 
FROM employee
GROUP BY dept_id;
-- Display employee name in UPPER case
select upper(emp_name) from employee;
-- Display employee name length
select length(emp_name) from employee;
-- Display employees with name length > 5
SELECT *
FROM employee
WHERE LENGTH(emp_name) > 5;
-- Extract year from join_date
SELECT emp_name, YEAR(join_date)
FROM employee;
-- Employees joined in 2022
SELECT *
FROM employee
WHERE YEAR(join_date) = 2022;
-- or
SELECT *
FROM employee
WHERE join_date BETWEEN '2022-01-01' AND '2022-12-31';
-- Employees whose email contains ‘gmail’
SELECT *
FROM employee
WHERE email LIKE '%gmail%';

















