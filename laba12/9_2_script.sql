use laba3

set nocount on;

begin tran

begin try
	--insert Orders values(5,'Mikl', 15, 70, '2025-12-07', 'Byby')
	--update Orders set Customer = 'Hello World' where Customer = 'Byby' 
	--drop table Product; 

	insert Orders values(6,'Milk', 51, 7, '2025-12-07', 'Byby')
	update Customer set Company_address = 'Hello World' where Company_name = 'hello' 
	drop table Orders; 

	print 'All Correct';
	commit  tran
end try
begin catch
	print rtrim(cast(Error_number() as char));

	if(ERROR_NUMBER() = 2627) print 'Error Insert';
	else if (ERROR_NUMBER() = 547) print 'Error Update';
	else if (ERROR_NUMBER() = 3726) print 'Error Drop';
	else if (ERROR_NUMBER() = 2628) print 'This table already Drop'

	rollback tran;
end catch