use book_shop;

select upper(title) from books;

select concat('MY FAVOURITE BOOK IS THE  ', UPPER(title)) as 'My Favourite books' from books;

select upper(concat(author_fname, ' ',author_lname)) as 'Author name in caps' from books;