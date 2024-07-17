use UNIVER

set nocount on;

begin tran

begin try
	--insert TEACHER values('hello', 'Nikolay Selicky Evgenievich', 'void', 'LB')
	--update PULPIT set FACULTY = 'ID' where PULPIT_NAME = 'Information systems and technologies' 
	--drop table FACULTY; 

	insert TEACHER values('hello', 'Nikolay Selicky Evgenievich', 'm', 'LB')
	update PULPIT set FACULTY = 'TOB' where PULPIT_NAME = 'Information systems and technologies' 
	drop table PROGRESS; 

	print 'All Correct';
	commit  tran
end try
begin catch
	if(ERROR_NUMBER() = 2628) print 'Error Insert';
	else if (ERROR_NUMBER() = 547) print 'Error Update';
	else if (ERROR_NUMBER() = 3726) print 'Error Drop';
	else if (ERROR_NUMBER() = 2627) print 'This table already Drop'

	rollback tran;
end catch