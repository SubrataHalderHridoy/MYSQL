create database if not exists college;

use college;

create table teacher(
   id int primary key,
   name varchar(50),
   subject varchar(50),
   salary int
);


insert into teacher
(id, name, subject, salary)
values
(23, "ajay", "math", 50000),
(47, "bharat", "english", 60000),
(18, "chetan", "chemistry", 45000),
(9, "divya", "physics", 75000);

select * from teacher;



-- Select teacher whose salary is more than 55k
select * from teacher
where salary > 55000;



-- Rename the salary column of teacher of teacher table to ctc.
alter table teacher
change column salary ctc int; 

select * from teacher;



-- Update salary all the teachers by giving them an increment of 25%
update teacher 
set ctc = ctc + ctc * 0.25; 

select * from teacher;



-- Add a new column for teacher called city. The default city should be "Guragon".
alter table teacher
add column city varchar(50) default "Guragon";

select * from teacher;



-- Delete the salary coulmn for teacher table
alter table teacher
drop column ctc; 

select * from teacher;








 


