use laba3

CREATE table Product
(Product_name nvarchar(50) primary key,
Price real unique not null,
Quantity int
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

ALTER table Product ADD Product_spoils nchar(1) default '-' check(Product_spoils in ('-','+'));
ALTER table Orders ADD All_weight int;

ALTER table Orders DROP COLUMN All_weight;