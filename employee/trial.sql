select * from bankdatabase;

select
concat(
left(dept::text,2),
' ',
right(emp_id::text,1), 
' ', 
name
) as value
from bankdatabase;

