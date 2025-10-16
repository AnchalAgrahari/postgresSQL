-- to make changes in the column not row

alter table BankDatabase
ALTER COLUMN salary type decimal(10,2);
select * from BankDatabase

--want to change the data type or size of the table column, to add ,delete,modify column in an existing table

--to remove column
alter table BankDatabase
drop column emp_id


--to add column
alter table BankDatabase
add emp_id serial primary key