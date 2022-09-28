use shop;

select *from customers;

select * from orders;

select * from customers, orders 
where customers.id = orders.customer_id;

select first_name,last_name , order_date, amount
from customers, orders
where customers.id = orders.customer_id;

-- Explicit way 

select * from customers join orders 
on customers.id = orders.customer_id;

select first_name,last_name , order_date, amount
from customers join  orders
on customers.id = orders.customer_id; 