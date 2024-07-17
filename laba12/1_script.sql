use UNIVER 

set nocount on;

if not exists(select * from sys.objects 
where object_id = object_id(N'TEACHER')) 
begin
	print 'Recreate this table'
	return;
end

declare @end int;
insert TEACHER values('hello', 'Selicky Nikolay Evgenievich', 'm', 'LB')

set IMPLICIT_TRANSACTIONS On

set @end = (select COUNT(*) from TEACHER);
Drop table TEACHER;

if(@end > 20) commit;
else rollback;

if exists (select * from sys.objects 
where object_id = object_id(N'TEACHER')) print 'Teacher Not Delete'
else print 'Teacher Delete'