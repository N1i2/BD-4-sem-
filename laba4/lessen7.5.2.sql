use laba3

Select Product.Product_name, Orders.Customer
From Product full outer join Orders
On Product.Product_name = Orders.Order_name
Where Orders.Customer is not null