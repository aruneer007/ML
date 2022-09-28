use book_shop;

-- time: hh:mm:ss
-- date: yyyy-mm-dd

create table people(
name varchar(100),
birthdate date,
birthtime time,
birthdt datetime
);

show tables;

desc people;

insert into people(name, birthdate, birthtime, birthdt) values
('sachin', '1983-11-11','10:10:00', '1983-11-11 10:10:00');

select * from people;

insert into people(name, birthdate, birthtime, birthdt) values
('kolhi', '1983-10-14','11:08:00', '1983-10-14 11:08:00'),
('larry', '1993-11-21','02:52:00', '1993-11-21 02:52:00');
