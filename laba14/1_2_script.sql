use UNIVER

go
alter function COUNT_STUDENTS (@@FACULTY varchar(20) = null, @PROFFESION varchar(20) = null) returns int
as begin
	declare @count int = (select COUNT(*) 
		from STUDENT s
		join GROUPS g on g.IDGROUP = s.IDGROUP
		join FACULTY fa on fa.FACULTY = g.FACULTY
		where g.FACULTY = isnull(@@FACULTY, g.FACULTY) and
		g.PROFESSION = isnull(@PROFFESION, g.PROFESSION))

	return @count
end
go

declare @coun int = dbo.COUNT_STUDENTS('EDeP', '1-40 01 02')
print 'count = ' + rtrim(@coun)