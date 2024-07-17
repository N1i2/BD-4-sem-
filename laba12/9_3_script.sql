use laba3

set nocount on;
declare @point varchar(3);

begin try
	begin tran;
		insert Orders values(6, 'bla', 1, 100, '2025-11-05', 'Hello')
		update Orders set Order_number = 4 where Order_number = 3
		set @point = 'p1' 
		save tran @point; 

		insert Orders values(6, 'Beer', 1, 100, '2025-11-05', 'Hello')
		update Orders set Order_name = 'Milk' where Order_number = 6
		set @point = 'p2' 
		save tran @point;
		
	print 'All Correct';
	commit tran;
end try
begin catch
print floor(cast(ERROR_NUMBER() as char))
	if(ERROR_NUMBER() = 547) print 'Error Insert';
	else if (ERROR_NUMBER() = 2627) print 'Error Update';
	else print 'Error'

	IF @@TRANCOUNT > 0
	BEGIN
		print 'Save tran: ' + cast(@point as varchar)
		ROLLBACK TRAN @point
		COMMIT TRAN
	END
end catch