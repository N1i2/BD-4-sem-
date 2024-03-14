use laba3

Select Product.Product_name, Orders.Order_name
From Product full outer join Orders
On Product.Product_name = Orders.Order_name