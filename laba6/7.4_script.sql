use laba3

Select Product.Product_name, 
ROUND(AVG(CAST(Product.Price as FLOAT(5))), 2)[avg_price]
From Product
Where Product_spoils = '+'
Group by Product_name
