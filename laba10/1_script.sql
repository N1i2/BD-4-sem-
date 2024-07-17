Use UNIVER

exec sp_helpindex 'AUDITORIUM'
exec sp_helpindex 'AUDITORIUM_TYPE'
exec sp_helpindex 'FACULTY'
exec sp_helpindex 'SUBJECT'
exec sp_helpindex 'PROFESSION'

Drop table if exists #leson1
Create table #leson1(
numb int,
text varchar(20))

checkpoint;
DBCC DROPCLEANBUFFERS;

set nocount on;
go
insert #leson1(numb, text) values(FLOOR(rand()*100)+1, REPLICATE('hello ', 3*rand()+1))
go 1000

select * from #leson1 where numb between 0 and 50
 
Create clustered Index #lesom1Ind on #leson1(numb)