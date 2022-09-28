use book_shop;
select char_length('Hello world');

select author_fname, char_length(author_fname) as 'length' from books;

select concat(author_fname , ' is ', char_length(author_fname), ' characters long ') as 'sentence' from books;