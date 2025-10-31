select emp_id from bankdatabase;
 
select emp_id, name from bankdatabase;

select * from bankdatabase where dept='Finance' and salary > 60000;

select * from bankdatabase where dept in ('IT','HR');

select distinct dept from bankdatabase;

select * from bankdatabase where salary between 60000  and 65000;

SELECT * FROM bankdatabase order by name desc;

SELECT * FROM bankdatabase order by name desc;    --i letter in name

SELECT * FROM bankdatabase WHERE name like '%a';   -- a letter in last of the name 

SELECT * FROM bankdatabase WHERE name like 'A%';     -- A letter in start of the name 

SELECT * FROM bankdatabase WHERE name like '__';   -- department which is of 2 letter

SELECT * FROM bankdatabase WHERE name like '_a%'; -- name whose 2nd letter is a

