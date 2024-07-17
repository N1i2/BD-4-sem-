use UNIVER

set nocount on;

go
create proc PAUDITORIUM_INSERTX
@a char(20), 
@n varchar(50), 
@c int = 0,
@t char(10), 
@th varchar(70)
as
begin try
	set tran isolation level SERIALIZABLE
	begin tran
		insert into AUDITORIUM_TYPE (AUDITORIUM_TYPE, AUDITORIUM_TYPENAME)
		values (@t, @th)
		exec PAUDITORIUM_INSERT @a, @n, @c, @t
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

exec PAUDITORIUM_INSERTX @a = '555-5', @n = 'MM', @c = 55, @t = 'MM', @th = 'Muzik Muzeum'

drop proc PAUDITORIUM_INSERTX