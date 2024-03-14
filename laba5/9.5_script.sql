use laba3

Select Product_name
From Product
Where not exists(select * from Orders
Where Order_name = Product_name)