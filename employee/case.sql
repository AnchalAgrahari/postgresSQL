select * from bankdatabase;

-- to get bonus
select salary,
case 
when salary >0 then round (salary*0.10)
end as bonus from bankdatabase;




-- to ge the high mid low in salary with name
select name ,salary,
case
    when salary > 60000 then 'High'
    when salary between 55000 and 60000 then 'Mid'
        else 'Low'
		end as value
from bankdatabase;





SELECT orders,
CASE
  WHEN per_price < 10 THEN 'Low price product'
  WHEN per_price > 50 THEN 'High price product'
ELSE
  'Normal product'
END
FROM orders;
