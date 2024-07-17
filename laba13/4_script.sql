use UNIVER
set nocount on;

drop proc PAUDITORIUM_INSERT;

go
create proc PAUDITORIUM_INSERT
@a char(20),
@n varchar(50),
@c int = 0,
@t char(10)
as 
begin try
	insert into AUDITORIUM
	values (@a, @n, @c, @t);
	
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
exec @res = PAUDITORIUM_INSERT @a = '555-5', @n='LK', @c=55, @t='555-5';

if @res > 0 print 'All correct'
