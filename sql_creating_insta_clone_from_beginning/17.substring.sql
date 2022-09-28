select substring('Hello World',1,7);

select  substring('Hello World', -3);

show databases;

use book_shop;

show tables;
select title from books;
select substring('A Hologram for the King: A Novel',1,10);
select substring(title,1,10) as first
from books;

select
concat
(
substring(title,1,10),
'...'
) as 'short_title'
from books;

