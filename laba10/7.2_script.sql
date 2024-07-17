Use laba3

Drop table if exists #leson2
Create table #leson2(name nvarchar(50), price real, quantity int, spoils nchar(1))

checkpoint;
DBCC DROPCLEANBUFFERS;

set nocount on;

insert into #leson2 
Select Product_name, Price, Quantity, Product_spoils
From Product
Where Quantity > 10

select count(*)[Count_of_string] from #leson2
select * from #leson2

create index #Sostavn on #leson2(name, price);

Select * from #leson2 where price between 0 and 15 
Order by price