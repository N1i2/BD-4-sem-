use laba3

set nocount on;

if not exists(select * from sys.objects 
where object_id = object_id(N'Orders')) 
begin
	print 'Recreate this table'
	return;
end

declare @end int;
--insert Orders values(6, 'Eat', 12, 80, '2012-12-12', 'hhh')

set IMPLICIT_TRANSACTIONS On

set @end = cast((select COUNT(*) from Orders) as int);
Drop table Orders;

if(@end > 5) commit;
else rollback;

if exists (select * from sys.objects 
where object_id = object_id(N'Orders')) print 'Orders Not Delete'
else print 'Orders Delete'