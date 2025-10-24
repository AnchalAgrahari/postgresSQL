select dept, count(name) from bankdatabase group by dept;


select dept, count(name) , avg(salary) from bankdatabase group by dept;
