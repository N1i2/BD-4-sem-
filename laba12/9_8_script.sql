use laba3;

begin tran
	insert Orders values (8,'Oranges', 9.9, 400, '2025-11-05', 'Byby')
	begin tran
		update Orders set Order_number = 9 where Order_number = 2
		commit
if @@TRANCOUNT > 0 rollback

select (select count(*) from Orders where Order_number = 4) Hello_Auditory,
	   (select count(*) from Product where Product_name like 'Milk') Hello_Type