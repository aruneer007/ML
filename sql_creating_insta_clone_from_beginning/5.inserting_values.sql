use something;

create table people
(
first_name varchar(40),
last_name varchar(40),
age int
);

show tables;

desc people;

insert into people(first_name, last_name, age)
values ('Tina','Belcher',13);

insert into people(first_name,last_name, age)
values('Bob','Belcher',42);

insert into people(first_name, last_name, age)
values('Linda', 'Bellcher',45),
('Philip','Frond',38),
('Calvin', 'Fischoeder',70);
select * from people;

drop table people;

show tables;

desc cats;
