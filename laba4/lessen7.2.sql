use laba3

Select Product.Product_name, Orders.Order_number, Orders.Customer
From Product inner join Orders
On Product.Product_name = Orders.Order_name And
Orders.Customer like '%Byby%'