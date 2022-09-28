use book_shop;

select title, author_lname from books
group by author_lname;

select author_lname, count(*) from books 
group by author_lname;

select title, author_fname, author_lname from books
group by author_lname;


select concat(released_year,' - ', count(*)) as summary
from books
group by released_year
order by released_year desc;