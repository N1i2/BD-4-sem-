use laba3

Drop View Customers

Create View Customers(Name, Adress)
as select cu.Company_name,
cu.Company_address
From Customer cu
Where cu.Company_address like 'Hello%'

Select * From Customers