create database instagram;
use instagram;

CREATE TABLE user(
   id int,
   age int,
   name varchar(30) not null,
   email varchar(50) unique,
   followers int default 0,
   following int,
   constraint check (age >= 18),
   primary key (id)
);

CREATE TABLE post(
  id int primary key,
  content varchar(100),
  user_id int,
  foreign key (user_id) references user(id)
);

insert into user
(id, age, name, email, followers, following)
value
(1, 20, "adam", "adam@yahoo.in", 123, 145),
(2, 21, "bob", "bob@yahoo.com", 124, 345),
(3, 24, "casey", "caasey@gamil.com", 457, 900),
(4, 34, "donald", "donald@gmail.com", 567, 890);

-- select id, name, email from user;
select * from user;
select distinct age from user;


select *
from user
where followers >= 300;


select name, followers
from user
where followers >= 300;

select name, age
from user
where age > 21;

select name, age
from user
where age + 1 = 21;

select name, age, followers
from user
where age > 15 and followers > 200;

select name, age, followers
from user
where age > 15 or followers > 200;

select name, age, followers
from user
where age between 20 and 24;


select name,followers, email
from user
where email in ("donald@gmail.com", "bob@yahoo.com", "puja@gamil.com");


insert into user
(id, age, name, email, followers, following)
value
(5, 24, "eve", "sadam@yahoo.in", 900, 149090),
(9, 27, "marle", "marle@yahoo.com", 960, 34500);


select name, age, followers
from user
where age in (24, 27);

select name, age, followers
from user
where age not in (24, 27);


select name, age, email
from user
where age > 21
limit 2;


select name, age, email
from user
limit 3;


select name, age, followers
from user
order by followers asc;


select name, age, followers
from user
order by followers desc;


select name, age, followers
from user
order by followers;


select max(followers)
from user;


select max(age)
from user;


select count(age)
from user
where age = 24;


select min(age)
from user;


select avg(age)
from user;


select sum(followers)
from user;


select count(id)
from user
group by age;


select age, count(id)
from user
group by age;


select age
from user
group by age;


select age, max(followers)
from user
group by age;


select age, max(followers)
from user
group by age
having max(followers) > 200;


select age, max(followers)
from user
group by age
having max(followers) > 200
order by age desc;


set SQL_SAFE_UPDATES = 0;

update user
set followers = 900
where age = 24;

select * from user;


delete from user
where age =  21;

select * from user;


alter table user
add column city varchar(25) default "dhaka";

select * from user;


alter table user
drop column age;

select * from user;


alter table user
rename to instaUser;

select * from instaUser;


alter table instaUser
rename to user;


alter table user
change column followers subs int default 0;

select * from user;


alter table user
modify subs int default 5;

select * from user;


insert into user
(id, name, email, following)
values
(13, "gemini", "gem@gamil.com", 120);


drop table post;

alter table user
modify subs int default 5;

truncate table user;

select * from user;