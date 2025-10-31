select * from fictional;


alter table fictional
add column book varchar(100);

update fictional
set book = ('the boaring life')
where id in (25,57);








-- for table orders


alter table orders
rename column quntaty to qunatity;