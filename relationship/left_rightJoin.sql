
-- lest join and right join
--we'll get the data of those customer even thry haven't placed any order
select * from customer c left join orders o
on c.cust_id = o.cust_id ;
------
select * from customer c right join orders o
on c.cust_id = o.cust_id ;
