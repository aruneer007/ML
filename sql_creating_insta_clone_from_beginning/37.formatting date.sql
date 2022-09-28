use book_shop;

-- Formatting dates (and times);
-- Day()
-- dayname()
-- dayofweek()
-- dayofyear()
-- monthname()
-- year()

-- https://dev.mysql.com/doc/refman/8.0/en/date-and-time-functions.html 

select name, birthdate, day(birthdate) from people;

select name, birthdate, dayname(birthdate) from people;

select name, birthdate, dayofweek(birthdate) from people;

select name, birthdate, dayofyear(birthdate) from people;

select name, birthdate, monthname(birthdate) from people;

select name, birthdt, dayofyear(birthdt) from people;

select date_format(birthdate , '%m %d %Y') from people;