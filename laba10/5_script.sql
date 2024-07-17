use tempdb

drop table if exists #leson5
Create table #leson5(numb int, text varchar(20))

checkpoint;
dbcc DROPCLEANBUFFERS;

create index test on #leson5(numb)

insert top(100000) #leson5 select numb, text from #leson5

set nocount on;
declare @i int = 0;

while @i<30000
begin
insert #leson5 values (FLOOR(100*RAND())+1, 'hello')
set @i += 1;
end

SELECT name [Name], avg_fragmentation_in_percent [Fragmintation (%)]
FROM sys.dm_db_index_physical_stats(DB_ID(N'TEMPDB'), 
OBJECT_ID(N'#leson5'), NULL, NULL, NULL) ss  JOIN sys.indexes ii 
on ss.object_id = ii.object_id and ss.index_id = ii.index_id  
WHERE name is not null;



Alter index test on #leson5 reorganize

Alter index test on #leson5 rebuild with(online = off)
