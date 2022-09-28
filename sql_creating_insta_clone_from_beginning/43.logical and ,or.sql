use book_shop;

-- && - logical and
-- || - logical or

select title, author_fname , author_lname , released_year from books where author_lname='Eggers' and released_year > 2010;

select title, author_fname , author_lname , released_year from books where author_lname='Eggers' or released_year > 2010;
