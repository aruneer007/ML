use something;

create table cats3
(
name varchar(50) default 'no name provided',
age int default 10
);

show tables;

desc cats3;

insert into cats3(age)
values (5);


insert into cats3() values();

insert into cats3(name,age) values ('Montana', null);
select * from cats3;



