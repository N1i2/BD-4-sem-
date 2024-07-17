use laba3
set nocount on;

drop proc PORDER_INSERT;

go
create proc PORDER_INSERT
@numb int,
@name nvarchar(50),
@price real,
@quantity int,
@date date,
@customer nvarchar(20)
as 
begin try
	insert into Orders
	values (@numb, @name, @price, @quantity, @date, @customer);
	
	return 1;
end try
begin catch
	print 'Error code: ' + rtrim(cast(error_number() as char));
	print 'Error severity: ' + rtrim(cast(error_severity() as char));
	print 'Error text: ' + rtrim(cast(error_message() as char));

	return -1;
end catch
go

declare @res int;
exec @res = PORDER_INSERT @numb=12, @name='Milk', @price=12.12, @quantity=12, @date='2012-12-12', @customer='Hello';

if @res > 0 print 'All correct'