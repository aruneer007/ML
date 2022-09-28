select reverse ('Hello World');

use book_shop;  

select reverse(author_fname) from books;

select concat(author_fname, reverse(author_fname)) as palindrome from books;