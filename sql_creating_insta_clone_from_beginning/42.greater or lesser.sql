use book_shop;

select title, released_year from books where released_year > 2000 order by released_year;

select title, released_year from books where released_year >= 2000 order by released_year;

select title , stock_quantity from books where stock_quantity >=100;

select 99<1;

-- true = 1
-- false = 0

select 'A'>'a';

select 'A'>= 'a';

select title, released_year from books where released_year < 2000 order by released_year;

select title, released_year from books where released_year <= 2000 order by released_year;
