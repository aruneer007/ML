use tv_review_app;

-- REVIEWER STATUS
select first_name, last_name,
count(reviews.reviewer_id) as COUNT,
ifnull(min(ratings),0) as MIN,
ifnull(max(ratings),0) as MAX,
ifnull(avg(ratings),0) as AVG,
case
when avg(ratings) > 0 then 'ACTIVE'
else 'INACTIVE'
end as STATUS
from 
reviewers left join reviews
on reviewers.id = reviews.reviewer_id
group by reviewers.id;