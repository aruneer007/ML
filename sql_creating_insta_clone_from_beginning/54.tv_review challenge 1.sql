use tv_review_app;

show tables;

desc reviewers;
desc reviews;
desc series;

select * from series;
select * from reviewers;
select * from reviews;

-- challenge 1 
select title, ratings 
from series join reviews
on series.id = reviews.series_id;
