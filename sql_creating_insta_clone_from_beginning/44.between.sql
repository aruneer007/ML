use book_shop;

select title, released_year from books
where 
released_year between 2000 and 2015;

desc books;

select title, pages from books where pages between 200 and 1000;
select title, pages from books where pages not between 200 and 1000;

select title , pages from books;

select * from people;

select name , birthdt from people
where birthdt between '1980-01-01' and '2000-01-01';

-- better approach:
select name , birthdt from people
where birthdt between cast('1980-01-01' as datetime)
 and cast('2000-01-01' as datetime);

