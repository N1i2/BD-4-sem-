use laba3

Drop View All_Product_Count

Create View All_Product_Count(Product_Name, Order_Count)
as select pr.Product_name,
COUNT(ord.Order_name)
From Product pr inner join Orders ord
On pr.Product_name = ord.Order_name
Group by pr.Product_name

Select * From All_Product_Count