use book_shop;

select sum(pages) from books;

select sum(released_year) from books;

select author_fname, author_lname , sum(pages)
from books
group by author_lname, author_fname;