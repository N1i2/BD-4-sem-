use laba3

Select Product.Quantity, 
AVG(Orders.Selling_price)[avg_Price]
From Product inner join Orders
On Product.Product_name = Orders.Order_name
Where Product_name like '%e%'
Group by Product.Quantity

