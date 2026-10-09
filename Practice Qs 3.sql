create database if not exists employee;

use employee;

create table employee(
   empid int primary key,
   firstname varchar(50),
   lastname varchar(50),
   department varchar(50),
   salary int,
   hiredate date
);


insert into employee
(empid, firstname, lastname, department, salary, hiredate)
values
(101, "Alice", "Johnson", "IT", 6500, "2020-03-15"),
(102, "Mark", "Rivera", "HR", 4800, "2019-07-22"),
(103, "Sophia", "Lee", "Finance", 7200, "2021-01-10"),
(104, "Daniel", "Kim", "IT", 5800, "2018-11-05"),
(105, "Emma", "Brown", "Marketing", 5300, "2022-04-08"),
(106, "Lima", "Patel", "Finance", 6900, "202-09-29"),
(107, "Olivia", "Garacia", "HR", 4600, "2017-06-30"),
(108, "Noah", "Thompson", "IT", 7500, "2023-02-12"),
(109, "Ava", "Martinez", "Marketing", 5100, "2019-12-02"),
(110, "Ethan", "Davis", "Finance", 8000, "2016-05-14");

select * from employee;



-- Write a query to display evey employee and all their data.
select * from employee;



-- List only the FirstName, lastname, and salaryy of every employee.
select firstname, lastname, salary
from employee; 



-- Show all employees who works in the 'IT' department
select * from employee
where department = 'IT'; 




-- Retrieve employees with a salary greater than 6000.
select * from employee
where salary > 6000;



-- List all employees order by HireDate from newest to oldset.(decreasing)
select * from employee
order by hiredate desc;



-- Show a list off all unique department present in the table
select distinct department
from employee; 



-- Find employees whose first name starts with 'A'.
select * from employee
where firstname like 'A%'; 


-- Show employees whose salaries are between 4000 and 7000
select * from employee
where salary between 4000 and 7000;



-- Find the average salary of all employees.
select avg(salary) as AvarageSalary
from employee; 



-- List each department along with the number of employees but only include department with more than 3 employees.
select department, count(*) as TotalEmployee
from employee
group by department
having count(*) > 3; 







 

