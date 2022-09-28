use book_shop;

select avg(pages) from books;

select avg(stock_quantity), released_year
from books
group by released_year;

select author_fname, author_lname, avg(pages)
from books
group by author_lname, author_fname;