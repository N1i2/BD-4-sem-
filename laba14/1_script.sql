use UNIVER 

drop function if exists COUNT_STUDENTS

go
create  function  COUNT_STUDENTS (@FACULTY varchar(20)) returns int
as begin
	declare @AllStu int = (select count(*) 
	from STUDENT s 
	join GROUPS g on g.IDGROUP = s.IDGROUP
	join FACULTY fa on fa.FACULTY = g.FACULTY
	where g.FACULTY = @FACULTY)

	return @AllStu
end
go

declare @count int = dbo.COUNT_STUDENTS('XTiT');

print 'student = ' + rtrim(cast(@count as varchar))