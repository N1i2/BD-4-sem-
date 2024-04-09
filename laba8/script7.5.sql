use laba3

Drop View Prod

Create View Prod(Name, Price)
as select top 2 pr.Product_name,
pr.Price
From Product pr
Order by pr.Price

Select * From Prod