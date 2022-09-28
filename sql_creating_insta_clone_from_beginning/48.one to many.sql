create database shop;
 
show databases;
 
use shop;
select database();
 
create table customers(
 id int auto_increment primary key,
 first_name varchar(100),
 last_name varchar(100),
 email varchar(100)
 );
 
create table orders(
 order_id int auto_increment primary key,
 order_date date,
 amount decimal(8,2),
 customer_id int,
 foreign key(customer_id) references customers(id)
 );
 
 show tables;
 
 desc customers;
 
 desc orders;
drop table customers, orders;
INSERT INTO customers (first_name, last_name, email) 
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');
select * from customers;
       
INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016-02-10', 99.99, 1),
       ('2017-11-11', 35.50, 1),
       ('2014-12-12', 800.67, 2),
       ('2015-01-03', 12.50, 2),
       ('1999-04-11', 450.25, 5);
show warnings;
select * from orders;
set sql_safe_updates = 0;
delete from orders;