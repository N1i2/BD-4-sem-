use laba3

drop proc PPRODUCT

go
create proc PPRODUCT as
begin
	declare @count int = (select count(*) from Product)
	select * from Product
	return @count
end
go

declare @ansver int = 0;
exec @ansver = PPRODUCT
print 'Ansver = ' + rtrim(cast(@ansver as char))