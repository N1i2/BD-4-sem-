use laba3

Select Product.Product_name, 
ROUND(AVG(CAST(Product.Price as FLOAT(5))), 2)[avg_price]
From Orders inner join Product
On Product.Product_name = Order_name
Group by Product_name

