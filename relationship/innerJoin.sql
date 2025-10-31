-- will join the table with sale cust_id (customer_id)
select * from customer c inner join orders o
on c.cust_id = o.cust_id;


----will show whic customer has laced how many order
select c.cust_name, count(o.order_id) from customer c inner join orders o
on c.cust_id = o.cust_id 
group by cust_name;