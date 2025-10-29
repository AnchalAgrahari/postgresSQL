select * from bankdatabase;

select concat(left(dept::text,1),right(emp_id::text,1),' ',name ) as value from bankdatabase;





select substr(dept,1,1) from bankdatabase;