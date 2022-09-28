use book_shop;

-- logical operators

-- not equal
-- not like

select title, released_year from books where released_year != 2017 order by released_year;

desc books;

select title from books where title like 'w%';

select title from books where title not like 'w%';