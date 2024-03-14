use laba3

Select Product.Product_name, Product.Price, Orders.Selling_price, Orders.Customer
From Product cross join Orders
Where Product.Product_name = Orders.Order_name