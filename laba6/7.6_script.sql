use laba3

Select Product_name,
(Select COUNT(*)
From Product p2
Where p1.Product_name = p2.Product_name
and p1.Price = p2.Price)[count_of_Product]
From Product p1
Group by Product_name, Price
Having p1.Price between 0 and 150