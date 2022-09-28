use book_shop;

select title from books limit 3;

desc books;

select title from books order by stock_quantity limit 3;

select title, released_year from books order by released_year desc limit 5;

select title, released_year from books order by released_year desc limit 3,5;