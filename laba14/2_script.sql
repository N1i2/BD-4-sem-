use UNIVER

drop function if exists FSUBJECTS;

go
create function FSUBJECTS(@p varchar(20)) returns varchar(300)
as begin
	declare @tchet varchar(300) = 'Subjects: '
	declare @sud varchar(100) = ''

	declare inform cursor local static for
	(select su.SUBJECT from SUBJECT su
	where su.PULPIT = @p)

	open inform

	fetch inform into @sud
	while @@FETCH_STATUS = 0
	begin
		set @tchet += rtrim(@sud) + ', ' + @tchet;
		fetch inform into @sud
	end
	close inform

	return @tchet
end
go


select PULPIT pulpit, dbo.FSUBJECTS(PULPIT) disciplin
from PULPIT