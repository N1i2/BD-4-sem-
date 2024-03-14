use laba3

Select Product.Product_name, Product.Price, Orders.Selling_price
From Product inner join Orders
On Product.Product_name = Orders.Order_name