use laba3

set nocount on;

go
create proc PORDER_INSERTX
@numb int,
@name nvarchar(50),
@price real,
@quantity int,
@date date,
@customer nvarchar(20),
@addres nvarchar(50),
@check nvarchar(20)
as
begin try
	set tran isolation level SERIALIZABLE
	begin tran
		insert into Customer
		values (@customer, @addres, @check)
		exec PORDER_INSERT @numb ,@name ,@price ,@quantity ,@date ,@customer 
	commit tran
	return 1
end try
begin catch
	print 'Error: ' + cast(ERROR_MESSAGE() as char)
	if @@TRANCOUNT > 0 
		rollback tran
	return -1
end catch
go

exec PORDER_INSERTX @numb = 11,
	@name = 'Void',
	@price = 33.33,
	@quantity = 1, 
	@date = '2004-08-07',
	@customer = 'nikola',
	@addres = 'doma', 
	@check = '0000000001'

drop proc PORDER_INSERTX