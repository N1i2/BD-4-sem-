use  UNIVER

drop function if exists COUNT_PULPITS
drop function if exists COUNT_GROUPS
drop function if exists COUNT_PROFESSIONS
drop function if exists FACULTY_REPORT

go
create function COUNT_PULPITS (@FACULTY varchar(20)) returns int
as begin
	declare @COUNT int = (select count(PULPIT) from PULPIT where FACULTY = isnull(@FACULTY, FACULTY))
	return @COUNT
end
go
create function COUNT_GROUPS (@FACULTY varchar(20)) returns int
as begin
	declare @COUNT int = (select count(IDGROUP) from GROUPS where FACULTY = isnull(@FACULTY, FACULTY))
	return @COUNT
end
go
create function COUNT_PROFESSIONS (@FACULTY varchar(20)) returns int
as begin
	declare @COUNT int =  (select count(PROFESSION) from PROFESSION where FACULTY = isnull(@FACULTY, FACULTY))
	return @COUNT
end
go
create function FACULTY_REPORT(@c int) returns @fr table
([Facultet] varchar(50), [Count_of_pulpit] int, [Count_of_group] int, [Count_of_student] int, [Count_of_special] int)
as begin 
	declare @f varchar(30);
	declare cc CURSOR static for 
	select FACULTY from FACULTY 
	where  dbo.COUNT_STUDENTS(FACULTY, default) > @c; 

	open cc;  
		fetch cc into @f;
	    while @@fetch_status = 0
			begin
	            insert @fr values(@f,  dbo.COUNT_PULPITS(@f),
	            dbo.COUNT_GROUPS(@f),   dbo.COUNT_STUDENTS(@f, default),
	            dbo.COUNT_PROFESSIONS(@f)); 
	            fetch cc into @f;  
	       end;   
	return; 
end;
go

select * from FACULTY_REPORT(0)