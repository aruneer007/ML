use book_shop;

select * from books order by author_fname;

select * from books order by author_fname desc;

select author_lname from books order by author_lname;

select * from books order by released_year;

select title, released_year from books order by released_year;

select author_fname, author_lname from books order by author_lname, author_fname;