use book_shop;

select title , author_fname from books;

select title, author_fname from books where author_fname like '%da%';

select title, author_fname from books where author_fname like 'da%';

select title , author_fname from books where title like'the';

select title , author_fname from books where title like 'the%';
select title , author_fname from books where title like '%the%';


select title, stock_quantity from books;

select title , stock_quantity from books where stock_quantity like '____';

select title , stock_quantity from books where stock_quantity like '___';

select title from books where title like '%\%%';

select title from books where title like '%\_%';