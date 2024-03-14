use laba3

Select Product_name, Price
From Product pr1
Where Price = (Select top(1) Price from Product pr2
where pr2.Product_spoils = pr1.Product_spoils
Order by Price desc)