create table orders(
order_id serial primary key,
date_of_order date not null default current_date,
quntity varchar(700) not null,
per_price numeric not null,
cust_id integer not null,
foreign key (cust_id) references
customer(cust_id)
);


select * from orders;

update customer


INSERT INTO orders (quantity, per_price, cust_id) VALUES
('2 Books', 450.00, 1),
('1 Laptop Bag', 1200.00, 2),
('3 Pens', 150.00, 3),
('5 Notebooks', 500.00, 4),
('1 Smartwatch', 5500.00, 5),
('2 Headphones', 2200.00, 6),
('4 T-Shirts', 2000.00, 7),
('1 Backpack', 1800.00, 8),
('3 Coffee Mugs', 900.00, 9),
('2 Jackets', 4800.00, 10);
