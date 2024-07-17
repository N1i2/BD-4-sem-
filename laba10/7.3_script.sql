use laba3

Drop table if exists #leson3;
Create table #leson3(name nvarchar(50), price real, quantity int, spoils nchar(1))

checkpoint;
DBCC DROPCLEANBUFFERS

set nocount on;

insert into #leson3
Select Product_name, Price, Quantity, Product_spoils
From Product


Select * from #leson3 where quantity < 100

Create index leson3Indx on #leson3(name) include (quantity)