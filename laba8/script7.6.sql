use laba3

Drop View Orde

Create View [Orde] With SchemaBinding
as select ord.Customer,
Count(pr.Product_spoils)[Count_Of_Product]
From dbo.Orders ord inner join dbo.Product pr
On ord.Order_name = pr.Product_name
Group by ord.Customer

Select * From Orde