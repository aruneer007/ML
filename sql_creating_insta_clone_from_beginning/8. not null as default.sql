use something;

create table cats4
(
name varchar(40) not null default 'unnamed',
age int not null default 99
);

desc cats4;

insert into cats4() values();

insert into cats4(name, age) values (null,null);
insert into cats4(name, age) values ();
insert into cats4(name) values ('Montana');
select * from cats4;