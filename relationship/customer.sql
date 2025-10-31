 create table customer(
 cust_id  serial primary key,
 cust_name varchar(100) not null
 );


select * from customer;

INSERT INTO customer (cust_name) VALUES
('Anchal Agrahari'),
('Riya Sharma'),
('Arjun Mehta'),
('Sia Kapoor'),
('Karan Verma'),
('yama Nair'),
('Dev Malhotra'),
('Meera Singh'),
('Rahul Tiwari'),
('Isha Bansal');
