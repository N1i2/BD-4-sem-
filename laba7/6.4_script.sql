use laba3

Select Customer.Company_address, Product.Quantity, AVG(Orders.Selling_price)[price]
From Customer inner join Orders
On Customer.Company_name = Orders.Customer inner join Product
On Orders.Order_name = Product.Product_name
Where Customer.Company_name = 'Byby'
Group By Customer.Company_address, Product.Quantity
INTERSECT
Select Customer.Company_address, Product.Quantity, AVG(Orders.Selling_price)[price]
From Customer inner join Orders
On Customer.Company_name = Orders.Customer inner join Product
On Orders.Order_name = Product.Product_name
Where Customer.Company_name = 'Hello'
Group By Customer.Company_address, Product.Quantity
