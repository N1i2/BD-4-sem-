use UNIVER

drop proc PSUBJECT

go
create proc PSUBJECT as
begin
	declare @count int = (select count(*) from SUBJECT)
	select su.PULPIT pulpit, su.SUBJECT subj,  su.SUBJECT_NAME name from SUBJECT su
	return @count
end
go

declare @ansver int = 0;
exec @ansver = PSUBJECT
print 'Ansver = ' + rtrim(cast(@ansver as char))