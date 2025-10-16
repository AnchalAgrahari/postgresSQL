-- INSERT INTO BankDatabase (name, lname, email, hire_data)
-- VALUES ('Shubham', 'Agrahari','shubhamagrahri03@gmail.com','2015-09-25');
-- SELECT * FROM BankDatabase

-- update BankDatabase
-- 	set hire_data = '2015-09-25'
-- 	where emp_id = '2';

UPDATE BankDatabase 
	SET DEPT = 'Accounts'
	WHERE name = 'Shubham';

SELECT * FROM BankDatabase