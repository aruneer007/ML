CREATE DATABASE cat_app;
USE cat_app;

show databases;

create TABLE CATS
(
name varchar(100),
age int
);

select database();

show tables;

show columns from CATS;

desc CATS;

drop table cats;

show tables;

