use UNIVER

Declare @word char(20), @result char(500) = '';
Declare discip Cursor for Select SUBJECT from SUBJECT where PULPIT like 'ECeT'

Open discip;
Fetch discip into @word
while @@FETCH_STATUS = 0
begin 
	fetch discip into @word
	set @result = rtrim(@word) + ', ' + @result;
end

print 'All Subject';
print @result;

Close discip;

deallocate discip;