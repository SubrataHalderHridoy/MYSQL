create database if not exists college;

use college;

create table student(
   rollno int primary key,
   name varchar(50),
   city varchar(50),
   marks int
);

insert into student
(rollno, name, city, marks)
values
(110, "adam", "Delhi", 76),
(108, "bob", "Mumbai", 65),
(124, "casey", "Pune", 94),
(112, "duke", "Pune", 80);


select * from student;



-- Select all students who scored 75+
select * from student
where marks>75;



-- Find names all cities where students are from.
select distinct city
from student;

select city 
from student
group by city;



-- Find the names marks of students from each city.
select city, max(marks)
from student
group by city;



-- Find the average of the class.
select avg(marks)
from student;



-- Add a new column grade assign grade such that
--      marks > 80, grade = O
--      marks 70-80, grade = A
--      marks 60-70, grade = B
alter table student
add column grade varchar(2);

select * from student;


update student
set grade = "O"
where marks >= 80;


update student
set grade = "B"
where marks >= 60 and marks < 70;



update student
set grade = "A"
where marks >= 70 and marks < 80;


select * from student;
