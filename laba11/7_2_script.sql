use laba3

--Declare orders cursor local  
Declare orders cursor global 
for Select Order_name from Orders

go --new packege

Declare @word char(50), @index int = 1;

open orders;
fetch orders into @word
while @@FETCH_STATUS = 0
begin
	print cast(@index as varchar(2)) + ') ' + @word;
	set @index += 1;
	fetch orders into @word
end
Close orders;

deallocate orders;