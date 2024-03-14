use laba3

Select Product.Product_name, isnull(Orders.Customer, '***')
From Product left outer join Orders
On Product.Product_name = Orders.Order_name