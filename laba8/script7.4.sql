use laba3

Alter View [Customers](Name, Adress)
as select cu.Company_name,
cu.Company_address
From Customer cu
Where cu.Company_address like 'Hello%'
With Check Option

Select * from Customers