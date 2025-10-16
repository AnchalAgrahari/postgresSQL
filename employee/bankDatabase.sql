create table BankDatabase(
	emp_id serial primary key,
	name varchar(100)not null,
	lname varchar(100) not null,
	email varchar(200) unique not null,
	dept varchar(100) not null default 'IT',
	salary int not null default '50000',
	hire_data date not null default current_date
);
select * from BankDatabase