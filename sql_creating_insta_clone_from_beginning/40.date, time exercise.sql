-- use case of char datatype = m/f, states name, y/n

-- create table inventory 
-- (
-- item_name _______,
-- price _______,
-- quantity _______
-- );
-- price < 1000000


-- varchar(40)
-- decimal(8,2)
-- int

-- diff between datetime and timestamp:

-- datetime = datatype
-- timestamp = function that return current date and time

select dayofweek(now());

select dayname(now());

select date_format(now(), '%m/%d/%Y');

select concat(monthname(now()),' ', day(now()),'th at ', hour(now()),':', minute(now())) as 'current date and time';

SELECT DATE_FORMAT(NOW(), '%M %D at %h:%i');

create table tweets(
content varchar(100),
username varchar(50),
time timestamp default now()
);

desc tweets;

INSERT INTO tweets (content, username) VALUES('this is my first tweet', 'coltscat');
SELECT * FROM tweets;

INSERT INTO tweets (content, username) VALUES('this is my second tweet', 'coltscat');
SELECT * FROM tweets;