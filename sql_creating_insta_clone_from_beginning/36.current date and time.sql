-- curdate()
-- curtime()
-- now()

select curdate();

select curtime();

select now();

use book_shop;

desc people;

insert into people(name, birthdate, birthtime, birthdt) values
('kitty', curdate(), curtime(), now());

select * from people;