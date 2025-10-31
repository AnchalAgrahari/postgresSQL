-- update BankDatabase
-- 	set hire_data = '2015-09-25'
-- 	where emp_id = '2';

UPDATE BankDatabase 
	SET DEPT = 'Accounts'
	WHERE name = 'Shubham';

SELECT * FROM BankDatabase