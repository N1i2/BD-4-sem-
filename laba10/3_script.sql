use UNIVER

Drop table if exists #leson3;
Create table #leson3(numb1 int, numb2 real, text varchar(20))

checkpoint;
DBCC DROPCLEANBUFFERS

set nocount on;
declare @i int = 0;

while @i<10000
begin
insert #leson3(numb1 ,numb2, text) values(FLOOR(100*RAND()+1), 100*RAND()+1, REPLICATE('hello ', 3*RAND()+1));
set @i += 1;
end

Select * from #leson3 where Len(text) < 15

Create index leson3Indx on #leson3(numb1) include (text)