use tv_review_app;


select title , ratings
from series left join reviews
on series.id = reviews.series_id;

select  ratings , concat(first_name,last_name) from  reviews left join reviewers
on reviewers.id = reviews.reviewer_id;

select title , ratings
from series  join reviews
on series.id = reviews.series_id;

select ratings, concat(first_name,last_name) from  reviews join reviewers
on reviewers.id = reviews.reviewer_id;

select title , ratings, concat(first_name,last_name) as name
from series  
join reviews
on series.id = reviews.series_id
join reviewers
on reviewers.id = reviews.reviewer_id
order by title;