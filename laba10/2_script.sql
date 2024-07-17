Use UNIVER

Drop table if exists #leson2
Create table #leson2(numb1 int, numb2 real, text varchar(20))

checkpoint;
DBCC DROPCLEANBUFFERS;

set nocount on;

Declare @i int =0
While @i<10000
begin 
insert #leson2(numb1, numb2, text) values(FLOOR(rand()*100)+1,rand()*100+1, REPLICATE('hello ', 3*rand()+1))
set @i+=1
end

select count(*)[Count_of_string] from #leson2
select * from #leson2 where numb1 between 80 and 100

create index #Sostavn on #leson2(numb1, numb2);

Select * from #leson2 where numb2 between 0 and 10 
Order by numb2