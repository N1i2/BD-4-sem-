use laba3

go
create proc SORDER_REPORT @p char(10)
as declare @res int =0
begin try							
	if not exists (select * from Orders ord where ord.Customer = @p)
	raiserror('Param error', 11, 1);

	declare createRes cursor
	for (select ord.Order_name from Orders ord where ord.Customer = @p)
	declare @text char(10),  @resText char(200) = ''

	open createRes
	fetch createRes into @text
	while @@FETCH_STATUS = 0
	begin
		set @resText = rtrim(@text) + ', ' + @resText;
		set @res += 1;
		fetch createRes into @text
	end
	print @resText;

	Close createRes
	deallocate createRes

	return @res;
end try
begin catch
	print rtrim(error_message());
	return -1;
end catch
go

declare @DoGo int;
exec @DoGo = SORDER_REPORT @p = 'Hello'
--exec @DoGo = SORDER_REPORT @p = 'ECeT'

if @DoGo > 0 print 'Count = ' + rtrim(cast(@DoGo as char))

drop proc SORDER_REPORT