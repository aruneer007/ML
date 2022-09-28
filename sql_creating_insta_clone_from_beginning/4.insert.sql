create database something;

use something;

create table cats
(
name varchar(40),
age int
);

show databases;

show tables;

desc cats;

insert into cats(name, age)
values ('blue',1);

insert into cats(name, age)
values ('green',2);

insert into cats(age, name)
values(3, 'jetson');

insert into cats(name, age)
values('peanut', 2),
('butter', 3),
('jelly', 4);
select * from cats;

