select * from orders;
select * from customer;



SELECT order_id, quantity
FROM orders
UNION
SELECT cust_id, cust_name
FROM customer
ORDER BY order_id;