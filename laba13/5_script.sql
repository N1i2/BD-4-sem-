use UNIVER

go
create proc SUBJECT_REPORT @p char(10)
as declare @res int =0
begin try							
	if not exists (select * from SUBJECT su where su.PULPIT = @p)
	raiserror('Param error', 11, 1);

	declare createRes cursor
	for (select su.SUBJECT from SUBJECT su where su.PULPIT = @p)
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
--exec @DoGo = SUBJECT_REPORT @p = 'ECeT'
exec @DoGo = SUBJECT_REPORT @p = 'hello'

if @DoGo > 0 print 'Count = ' + rtrim(cast(@DoGo as char))

drop proc SUBJECT_REPORT