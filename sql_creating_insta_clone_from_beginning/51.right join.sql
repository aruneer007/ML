use shop;

-- left join
select *
from customers left join  orders
on customers.id = orders.customer_id;

-- right join
select *
from customers join  orders
on customers.id = orders.customer_id;

select *
from customers right join orders
on customers.id = orders.customer_id;

select *
from orders right join customers
on customers.id = orders.customer_id;

