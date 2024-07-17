use UNIVER

drop function if exists FCTEACHER

go
create function FCTEACHER(@p varchar(20)= null)returns int
as begin
	declare @count int = (select count(*) 
		from TEACHER te
		where te.PULPIT = isnull(@p, te.PULPIT))

		return @count;
end
go

print 'All teachers = ' + rtrim(cast(dbo.FCTEACHER(null) as varchar))
print 'ECeT teachers = ' + rtrim(cast(dbo.FCTEACHER('ECeT') as varchar))

select PULPIT pulpit, dbo.FCTEACHER(PULPIT) [count_of_teacher] from PULPIT