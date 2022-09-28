use tv_review_app;

-- genre avg rating 
select genre , round(avg(ratings),2) as avg_rating
from series join reviews
on series.id = reviews.series_id
group by genre;

-- most reviewed title
select title, count(reviewer_id) as most_reviewed
from series
left join reviews
on series.id = reviews.series_id
group by series.id
order by most_reviewed desc;

