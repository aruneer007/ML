use book_shop;

create table names(
fname char(5),
lname varchar(7)
);

set sql_safe_updates = 0;
insert into names(fname, lname) values
('sharu', 'Reddy'),
('virat','Kohli'),
('Sachi','Tendulkar');

select * from names;
show warnings;

create table shop(price decimal(5,2));

insert into shop(price) values
(2.3),
(2.445),
(333.25),
(4525.1);