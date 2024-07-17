use UNIVER

drop table if exists #leson4
Create table #leson4(numb1 int, numb2 real, text1 varchar(20))

checkpoint;
DBCC DROPCLEANBUFFERS;

set nocount on;
declare @i int = 0;

while @i<1000
begin
insert #leson4 values(FLOOR(100*RAND())+1, 100*RAND()+1, REPLICATE('hello ', 3*RAND()+1))
set @i += 1;
end

Select * from #leson4 where numb1 < 30

Create index leson4Indx on #leson4(numb2) Where (numb1 < 30)