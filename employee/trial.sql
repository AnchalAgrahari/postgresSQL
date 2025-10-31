select * from bankdatabase;

select concat(left(dept::text,1),right(emp_id::text,1),' ',name ) as value from bankdatabase;

--to get the sum of the salary of finance 
select sum (salary) from bankdatabase where dept='Finance';



--to get the data highest salary
select * from bankdatabase order by salary desc ;

select * from bankdatabase order by salary desc limit 2;

----sub query
select * from bankdatabase 
where
salary=(select max(salary)from bankdatabase);


select substr(dept,1,1) from bankdatabase;

-- to get how many we have employee of low salary


select 
case
    when salary > 60000 then 'High'
    when salary between 55000 and 60000 then 'Mid'
        else 'Low'
		end as value, count(emp_id)
from bankdatabase
group by value;




