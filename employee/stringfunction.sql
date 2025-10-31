--select emp_id, concat_ws (' ',name,lname) as Fullname, dept from bankdatabase;


-- hello as example
select substr('hello ',1,4);

--replace( str, from_str, to_str)
select replace ('hello ','hello', 'hi buddy');

--perint the value in reverse
select reverse('hello');

-- length of the vale
select length ('asfreliyjrtjknh');

-- UPPER and lower Case
select upper('hello sir');
select lower ('HELLO');

--left right tirm
select left('adaskfjsd',4);
select right ('asafjndsekt',6);
select trim ('     safbsdf      ');


-- position
select position ('om' in ' thomas');

