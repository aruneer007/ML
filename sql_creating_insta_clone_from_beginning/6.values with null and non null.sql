use something;

show tables;

desc cats;

insert into cats(name)
values('Alabama');

select * from cats;

create table cats2 
(
name varchar(40) not null,
age int not null
);

show tables;


insert into cats2(age)
values (7);

show warnings;

select * from cats2;

insert into cats2(name,age) values(null,null);