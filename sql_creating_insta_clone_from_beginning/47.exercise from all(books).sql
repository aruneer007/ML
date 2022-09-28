select 10 != 10;

select 15>14 && 99 -5 <= 94;

select 1 in (5,3)|| 7 between 8 and 10;

use book_shop;

select title, released_year from books where released_year < 1980;

select title , author_lname from books where author_lname in ('eggers', 'chabon');

select title , author_lname from books where author_lname = 'lahiri' and released_year>2000;

select title, pages from books where pages between 100 and 200;

select title, author_lname from books where author_lname like 'c%' or author_lname like 's%';

select title, author_lname,
case
	when title like '%stories%' then 'Short Stories'
    when title like 'Just kids' or title like '%heartbreaking%' then 'Memoir'
    else 'Novel'
end as Type
from books;

select title, author_lname, 
case 
when count(*)>1 then concat(count(*), ' ', 'books')
else concat(count(*), ' ', 'book') 
end 
as 'count' 
from books group by author_lname, author_fname 
order by author_lname;