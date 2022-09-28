create database cat;

use cat;

create table unique_cats
(
cat_id int not null,
name varchar(50),
age int,
primary key (cat_id)
);

desc unique_cats;

insert into unique_cats(cat_id, name, age) 
values (1,'Fred',23)
,(2, 'Louise', 3);
select * from unique_cats;

create table unique_cats2
(
cat_id int not null auto_increment,
name varchar(40),
age int,
primary key(cat_id)
);


insert into unique_cats2(name, age)
values('scooby',3),
('dooby',5),
('doggy', 7),
('scoby',4);

select * from unique_cats2;