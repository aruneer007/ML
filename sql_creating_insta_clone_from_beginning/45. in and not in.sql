use book_shop;

select title, author_lname from books
where author_lname = 'carver' or
author_lname = 'lahiri' or
author_lname = 'smith';

-- same as
select title, author_lname from books
where author_lname in ('carver', 'lahiri', 'smith');

select title, author_lname from books
where author_lname not in ('carver', 'lahiri', 'smith');

SELECT title, released_year FROM books
WHERE released_year NOT IN 
(2000,2002,2004,2006,2008,2010,2012,2014,2016);

SELECT title, released_year FROM books
WHERE released_year >=2000 and
released_year NOT IN 
(2000,2002,2004,2006,2008,2010,2012,2014,2016)
order by released_year;
 
SELECT title, released_year FROM books
WHERE released_year >=2000 and
released_year % 2 != 0 
order by released_year;