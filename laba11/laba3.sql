USE laba3

drop table Product
drop table Customer
drop table Orders

go
CREATE table Product
(Product_name nvarchar(50) primary key,
Price real unique not null,
Quantity int,
);
CREATE table Customer
(
Company_name nvarchar(20) primary key,
Company_address nvarchar(50),
Checking_account nvarchar(20)
);
CREATE table Orders
(
Order_number int primary key,
Order_name nvarchar(50) foreign key references Product(Product_name),
Selling_price real,
Quantity int,
Date_of_delivery date,
Customer nvarchar(20) foreign key references Customer(Company_name)
);

Alter table Product add Spoils char(1) default '+' check(Spoils in ('+', '-'));

INSERT into Product(Product_name, Price, Quantity)
Values('Milk', 12.5, 80),
('Oranges', 8.88, 400),
('Beer', 0.99, 999),
('Void', 10000, 1);

update Product set Spoils = '-' where Product_name like 'Void';
update Product set Spoils = '-' where Product_name like 'Beer';

INSERT into Customer(Company_name, Company_address, Checking_account)
Values('Hello', 'HelloWorld d.2', '1234567890'),
('Byby', 'yl. csbui d. 17/5', '0987654321');

INSERT into Orders(Order_number, Order_name, Selling_price, Quantity, Date_of_delivery, Customer)
Values(1,'Milk', 13, 50, '2025-01-01', 'Hello'),
(2,'Oranges', 9.9, 400, '2025-11-05', 'Byby'),
(3,'Beer', 1, 1000, '2025-07-17', 'Byby'),
(4,'Void', 13.13, 1, '2025-12-12', 'Hello'),
(5,'Milk', 15, 70, '2025-12-07', 'Byby');