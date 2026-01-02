create database practice_database;
use practice_database;
CREATE TABLE Employee (
    Emp_id INT PRIMARY KEY,
    Emp_name VARCHAR(50),
    Job_Name VARCHAR(50),
    Salary INT,
    Gender VARCHAR(10),
    Dept_id INT
);
CREATE TABLE Department (
    Dept_id INT PRIMARY KEY,
    Dept_name VARCHAR(50),
    Location VARCHAR(50)
);
CREATE TABLE Project (
    Project_id INT PRIMARY KEY,
    Project_name VARCHAR(50),
    Dept_id INT,
    Budget INT
);
INSERT INTO Department VALUES
(1,'HR','Hyderabad'),
(2,'IT','Bangalore'),
(3,'Finance','Mumbai'),
(4,'Operations','Delhi'),
(5,'Analytics','Hyderabad');
select * from Department;
INSERT INTO Employee VALUES
(101,'Rakesh','Data Analyst',45000,'Male',5),
(102,'Anita','HR Executive',40000,'Female',1),
(103,'Rahul','Software Engineer',70000,'Male',2),
(104,'Neha','Data Scientist',90000,'Female',5),
(105,'Amit','Accountant',50000,'Male',3),
(106,'Sneha','HR Manager',80000,'Female',1),
(107,'Vikas','DevOps Engineer',85000,'Male',2),
(108,'Pooja','Business Analyst',60000,'Female',5),
(109,'Arjun','Finance Analyst',55000,'Male',3),
(110,'Kiran','Operations Lead',65000,'Male',4),
(111,'Meena','Operations Executive',42000,'Female',4),
(112,'Suresh','Intern',15000,'Male',NULL),
(113,'Divya','Intern',16000,'Female',NULL),
(114,'Manoj','Data Analyst',48000,'Male',5),
(115,'Kavya','Software Tester',52000,'Female',2);
select * from employee;
INSERT INTO Project VALUES
(201,'HR Automation',1,500000),
(202,'Payroll System',3,800000),
(203,'Data Warehouse',5,1200000),
(204,'E-commerce Platform',2,2000000),
(205,'Supply Chain System',4,1500000);
-- practice questions
-- Display all records from the Employee table
Select * from employee;
-- Display only Emp_name and Salary
Select Emp_name, salary from employee;
-- Display all department
-- Display employees earning more than 50,000
select * from employee where salary >50000;
-- Display employees earning between 40,000 and 80,000
Select * from employee where salary between 40000 and 80000;
-- Display employees whose job is exactly Data Analyst
 SELECT *FROM employee WHERE Job_Name = 'Data Analyst';
 -- Display employees whose job contains the word Analyst
 Select * from employee where Job_name Like '%analyst%';
 -- Display employees whose name ends with a
 select * from employee where Emp_name like '%a';
 -- Display employees working in department IDs 1 or 5
 select * from employee where Dept_id = 1 or Dept_id = 5;
 -- Display employees NOT working in department 2
 select * from employee where dept_id != 2;
 -- Display Female employees earning more than 60,000
 Select * from employee where salary > 60000 and gender = 'female';
 -- Display interns earning less than 20,000
 select * from employee where job_name = 'intern' and salary < 20000;
 -- Display employees who do NOT belong to any department
 select * from employee where Dept_id is not null;
 -- Increase salary by 5,000 for all employees whose job is Data Analyst
 update employee set salary = salary + 5000 where job_name = 'data analyst';
 -- Increase salary by 10% for employees earning less than 40,000
 UPDATE employee SET salary = salary * 1.10 WHERE salary < 40000;
DELETE FROM employee WHERE Job_Name = 'Intern';
-- Display Emp_name, Salary and Salary Level using CASE
SELECT Emp_name,
       Salary,
       CASE
           WHEN Salary >= 80000 THEN 'High'
           WHEN Salary >= 50000 THEN 'Medium'
           ELSE 'Low'
       END AS Salary_Level
FROM employee;
-- Display all employees ordered by salary in descending order
select * from employee order by salary desc;
-- Display the top 3 highest-paid employees
SELECT Emp_name, Salary
FROM employee
ORDER BY Salary DESC
LIMIT 3;
-- Find the average salary of all employees
select avg(salary) from employee;
-- Find the maximum and minimum salary
select max(salary) max, min(salary) min from employee;
-- Display job-wise employee count
select job_name, count(*) from employee group by job_name;
select * from department;
-- Department wise employee count
SELECT Dept_id, COUNT(*)
FROM employee
GROUP BY Dept_id;
-- Display gender-wise average salary
SELECT Gender, AVG(Salary)
FROM employee
GROUP BY Gender;
-- Display department-wise average salary
SELECT Dept_id, AVG(Salary)
FROM employee
GROUP BY Dept_id;
-- Departments having more than 2 employees
SELECT Dept_id, COUNT(*)
FROM employee
GROUP BY Dept_id
HAVING COUNT(*) > 2;
-- Display job roles having average salary greater than 60,000
select job_name, salary from employee group by job_name, salary having avg(salary) > 60000;
-- 
select * from employee;
select * from department;
-- Display employee name along with department name
select * from employee inner join department on employee.dept_id = department.dept_id;
select e.Emp_name, d.Dept_name from employee e inner join department d on e.dept_it = d.dept_id;
SELECT e.Emp_name, d.Dept_name FROM employee e INNER JOIN department d ON e.Dept_id = d.Dept_id;
-- Display employee name along with department location
select emp_name, location from employee inner join department on employee.dept_id = department.dept_id;
-- Display all employees even if they don’t belong to any department
SELECT * 
FROM employee e
left JOIN department d 
ON e.Dept_id = d.Dept_id;
-- Display all departments even if they have no employees
SELECT *  FROM employee e right JOIN department d ON e.Dept_id = d.Dept_id;
-- Display employees working in Hyderabad
select emp_name, location from employee inner join department on employee.dept_id = department.dept_id where department.location ='hyderabad';
select * from employee;
select * from department;
select * from project;
-- Display employees working in the IT department
select Emp_name, dept_name from employee inner join department on employee.dept_id = department.Dept_id where department.dept_name ='it';
-- Display project name along with department name
select dept_name, project_name from project inner join department on project.dept_id = department.dept_id;
-- Display employees working on projects of the Analytics department
select * from employee inner join department on employee.dept_id = department.dept_id where department.dept_name = 'analytics';
-- Display employees earning more than the company average salary
select emp_name, salary from employee where salary> (select avg(salary) from employee);
-- Display employees earning the maximum salary
select * from employee where salary = (select max(salary) from employee);
-- Display employees earning more than their department’s average salary
select emp_name, salary from employee where salary >(select avg(salary) from employee);



































