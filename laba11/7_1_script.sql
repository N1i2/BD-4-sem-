use laba3

Declare @word char(20), @result char(500) = '';
Declare Prod Cursor for Select Product_name from Product

Open Prod;
Fetch Prod into @word
while @@FETCH_STATUS = 0
begin 
	fetch Prod into @word
	set @result = rtrim(@word) + ', ' + @result;
end

print 'All product';
print @result;

Close Prod;

deallocate Prod;