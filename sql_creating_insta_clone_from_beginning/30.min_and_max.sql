use book_shop;

select min(released_year) from books;

select max(released_year) from books;

desc books;

select max(pages) from books;

select title, pages from books where pages =  (select min(pages) from books);

select title, pages from books where pages =  (select max(pages) from books);

select author_fname, author_lname, max(released_year) from books
group by author_fname, author_lname;

select author_fname, author_lname, max(pages) from books
group by author_fname, author_lname;

select concat(author_fname,' ', author_lname) as 'Authors',
max(pages) as 'longest book'
from books 
group by author_lname, author_fname;