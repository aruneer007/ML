create database animal;

use animal;

create table cats
(
cat_id int not null auto_increment,
name varchar(100),
breed varchar(100),
age int,
primary key(cat_id)
);

desc cats;

insert into cats(name, breed, age)
values('Ringo', 'Tabby',4),
('Cindy','Maine coon', 10),
('Dumble dore','Maine coon',11),
('Egg','Persian', 4),
('Misty','Tabby',13),
('George Micheal','Ragdoll',9),
('Jackson','Sphynx',7);

select * from cats;

select name, age from cats;

select * from cats where age=4;

select name from cats where age > 4;

select name, age from cats where breed='Tabby';

