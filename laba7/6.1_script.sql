use laba3

Select Customer.Company_address, Product.Quantity, AVG(Orders.Selling_price)[price]
From Customer inner join Orders
On Customer.Company_name = Orders.Customer inner join Product
On Orders.Order_name = Product.Product_name
Where Product.Quantity >= 10
--Group By Customer.Company_address, Product.Quantity
Group By ROLLUP (Customer.Company_address, Product.Quantity)