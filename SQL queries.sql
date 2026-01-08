use practice_sql;
select* from employee;
select @@autocommit;
set @@autocommit = 0;
set @@autocommit = 1;
-- CHARACTER FUNTIONS
-- upper : converst to upper case letters
select upper(emp_name) from employee;
-- lower : converts to lower case letters
select lower(emp_name) from employee;
-- inticap : converts first letter to capital and remaining to lower letters
select initcap(emp_name) from employee;
-- length : returns the length of the string
select length(emp_name) from employee;
select * from employee;
-- LPAD : Pads the characters towards the left side
select lpad(emp_name,10,'A') from employee;
-- RPAD : Pads the characters towards the Right side
select RPAD(emp_name,10,'A') from employee;
-- TRIM : removes the specified characters from both sides
select trim(emp_name) from employee;
-- INSTR : reurns the postion of the character
select instr(emp_name, 'r') from employee;
-- SUBSTR : returns substring of the string
select substr(emp_name, 3, 4) as substring from employee;
-- CONCAT : to join the two strings
select concat(emp_name,' ',emp_lastname) Full_Name from employee; -- ' ' gives space between the first name andd lastname 
-- Date function
-- current date - returns todays date
select curdate();
-- NOW() - returns todays date and time
select now();
select current_timestamp();
-- YEAR(), MONTH(), DAY() returns year,month,day 
select year(join_date),month(join_date),day(join_date) from employee;
-- DATEDIFF() Finds difference in days between two dates
SELECT DATEDIFF(CURDATE(), join_date) AS days_worked FROM employee;
-- TIMESTAMPDIFF() -Find difference in years / months / days.
SELECT emp_name,TIMESTAMPDIFF(day, join_date, CURDATE()) AS experience_days
FROM employee;
SELECT DAYNAME(join_date), MONTHNAME(join_date)
FROM employee;




-- 





