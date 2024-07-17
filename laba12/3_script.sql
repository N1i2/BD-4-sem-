use UNIVER

declare @point varchar(3);

set nocount on;

begin try
	begin tran;
		--insert TEACHER values('hello', 'Nikolay Selicky Evgenievich', 'm', 'LB')
		--update PULPIT set FACULTY = 'TOB' where PULPIT_NAME = 'Information systems and technologies' 
		drop table PROGRESS;
		set @point = 'p1' 
		save tran @point; 

		insert TEACHER values('hello', 'Nikolay Selicky Evgenievich', 'void', 'LB')
		update PULPIT set FACULTY = 'ID' where PULPIT_NAME = 'Information systems and technologies' 
		drop table FACULTY; 
		set @point = 'p2' 
		save tran @point;
		
	print 'All Correct';
	commit tran;
end try
begin catch
	if(ERROR_NUMBER() = 2628) print 'Error Insert';
	else if (ERROR_NUMBER() = 547) print 'Error Update';
	else if (ERROR_NUMBER() = 3726) print 'Error Drop';
	else if (ERROR_NUMBER() = 2627) print 'This table already Drop'

	IF @@TRANCOUNT > 0
	BEGIN
		print 'Save tran: ' + cast(@point as varchar)
		ROLLBACK TRAN @point
		COMMIT TRAN
	END
end catch