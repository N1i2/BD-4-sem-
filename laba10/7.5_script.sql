use laba3

drop table if exists #leson5
Create table #leson5(name varchar(20), quantity real)

checkpoint;
dbcc DROPCLEANBUFFERS;

create index test on #leson5(quantity)

insert top(10000) #leson5 select name, quantity from #leson5

set nocount on;

insert into #leson5 
Select Product_name, Price
from Product

use tempdb

SELECT name [Name], avg_fragmentation_in_percent [Fragmintation (%)]
FROM sys.dm_db_index_physical_stats(DB_ID(N'TEMPDB'), 
OBJECT_ID(N'#leson5'), NULL, NULL, NULL) ss  JOIN sys.indexes ii 
on ss.object_id = ii.object_id and ss.index_id = ii.index_id  
WHERE name is not null;



Alter index test on #leson5 reorganize

Alter index test on #leson5 rebuild with(online = off)
