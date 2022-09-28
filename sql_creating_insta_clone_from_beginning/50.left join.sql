
use shop;
select first_name,last_name , order_date, amount
from customers join  orders
on customers.id = orders.customer_id;

-- Inner join 
select first_name,last_name , order_date, sum(amount) as Total_spent
from customers join  orders
on customers.id = orders.customer_id
group by customers.id
order by total_spent desc; 

select *
from customers inner join  orders
on customers.id = orders.customer_id;

-- Left join

select *
from customers left join  orders
on customers.id = orders.customer_id;

select first_name,last_name , order_date, amount
from customers left join  orders
on customers.id = orders.customer_id;

select first_name,last_name , 
ifnull (sum(amount),0) as total_spent
from customers left join  orders
on customers.id = orders.customer_id
group by customers.id;