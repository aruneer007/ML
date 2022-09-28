select replace ('Hello World', 'Hell','@#$%');

select replace('Hello World','l','7');

select replace ('Hello World', 'o','O');

select 
replace ('cheese bread coffee milk',' ',' and ');

select replace(title, 'e', '3') from books;

select * from books;

select 
substring(replace(title,'e','3'), 1, 10) as 'replace'
from books;