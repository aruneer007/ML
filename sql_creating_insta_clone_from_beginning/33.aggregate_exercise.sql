use book_shop;

select released_year , count(title) from books group by released_year;

select sum(stock_quantity) from books;

select concat(author_fname,' ', author_lname) as 'Author',
avg(released_year) as 'Average' from books
group by author_lname, author_fname;

select concat(author_fname, ' ', author_lname) as 'Author', pages
from books
where pages = ( select max(pages) from books);

select max(pages) from books;

select concat(author_fname, ' ', author_lname) as 'Author'
from books
order by pages limit 1;

select released_year as 'year', count(*) as 'books', avg(pages) as'Average'
from books
group by released_year;


