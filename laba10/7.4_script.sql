use laba3

drop table if exists #leson4
Create table #leson4(name nvarchar(50), price real, quantity int, spoils nchar(1))

checkpoint;
DBCC DROPCLEANBUFFERS;

set nocount on;

insert into #leson4
Select Product_name, Price, Quantity, Product_spoils
From Product

Select * from #leson4 where quantity < 100

Create index leson4Indx on #leson4(name) Where (quantity < 100)