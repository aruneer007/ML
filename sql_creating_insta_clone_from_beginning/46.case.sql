use book_shop;

select title, released_year from books;

select title, released_year,
case
	when released_year >= 2000 then 'Modern lit'
    else '20th century Lit'
    end
as genre
from books order by released_year;

select title, stock_quantity, 
case
	when stock_quantity <= 50 then '*'
    when stock_quantity <=100 then '**'
    else '***'
    end
as genre
from books;

select title, stock_quantity, 
case
	when stock_quantity between 0 and 50 then '*'
    when stock_quantity between 55 and 100 then '**'
    else '***'
    end
as stock
from books;

select title, stock_quantity, 
case
	when stock_quantity between 0 and 55 then '*'
    when stock_quantity<= 100 then '**'
    else '***'
    end
as stock
from books;
