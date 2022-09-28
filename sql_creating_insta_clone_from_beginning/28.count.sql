use book_shop;

select * from books;

select count(*)  from books;

select author_fname from books;

select count(author_fname) from books;

select count(distinct author_fname) from books;

select count(author_lname) from books;

select count(distinct author_lname) from books;

select count(*) from books where title like '%the%';