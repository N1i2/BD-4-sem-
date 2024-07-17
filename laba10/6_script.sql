use tempdb

drop table if exists #leson6
Create table #leson6(numb int, text varchar(20))

checkpoint;
dbcc DROPCLEANBUFFERS;

create index test on #leson6(numb) with (fillfactor = 65)

set nocount on;
declare @i int = 0;

while @i<10000
begin
insert #leson6 values(1, 'hello');
set @i += 1;
end

SELECT name [Name], avg_fragmentation_in_percent [Fragmintation (%)]
FROM sys.dm_db_index_physical_stats(DB_ID(N'TEMPDB'), 
OBJECT_ID(N'#leson6'), NULL, NULL, NULL) ss  JOIN sys.indexes ii 
on ss.object_id = ii.object_id and ss.index_id = ii.index_id  
WHERE name is not null;