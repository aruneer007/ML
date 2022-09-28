use tv_review_app;
-- avg rating for title 
select title, avg(ratings) as  avg_rating
from series
join reviews on 
series.id = reviews.series_id
group by series.id
order by avg_rating;

-- user ratings 
select first_name, last_name, count(ratings)
from reviewers
join reviews 
on reviewers.id = reviews.reviewer_id
group by first_name, last_name;

desc reviews;


select title as unreviewed_series
from series left join
reviews
on series.id = reviews.series_id
where ratings is null;
