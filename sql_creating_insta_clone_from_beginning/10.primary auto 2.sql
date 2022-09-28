show databases;

create database employee;

use employee;

create table employees
(
id int not null auto_increment,
last_name varchar(40) not null,
first_name varchar(40) not null,
middle_name varchar(40),
age int not null,
current_status varchar(40) not null default 'employed',
primary key(id)
);

desc employees;


insert into employees(last_name, first_name, age) 
values('gates','bill',65);

select * from employees;