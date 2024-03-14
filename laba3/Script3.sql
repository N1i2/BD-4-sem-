use laba3

INSERT into Product(Product_name, Price, Quantity)
Values('Milk', 12.5, 80),
('Oranges', 8.88, 400),
('Beer', 0.99, 999),
('Void', 10000, 1);

INSERT into Customer(Company_name, Company_address, Checking_account)
Values('Hello', 'HelloWorld d.2', '1234567890'),
('Byby', 'yl. csbui d. 17/5', '0987654321');

INSERT into Orders(Order_number, Order_name, Selling_price, Quantity, Date_of_delivery, Customer)
Values(1,'Milk', 13, 50, '2025-01-01', 'Hello'),
(2,'Oranges', 9.9, 400, '2025-11-05', 'Byby'),
(3,'Beer', 1, 1000, '2025-07-17', 'Byby'),
(4,'Void', 13.13, 1, '2025-12-12', 'Hello'),
(5,'Milk', 15, 70, '2025-12-07', 'Byby');