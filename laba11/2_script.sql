use UNIVER

--Declare teacher cursor local  
Declare teacher cursor global 
for Select TEACHER_NAME from TEACHER where GENDER like 'm'

go --new packege

Declare @word char(50), @index int = 1;

open teacher;
fetch teacher into @word
while @@FETCH_STATUS = 0
begin
	print cast(@index as varchar(2)) + ') ' + @word;
	set @index += 1;
	fetch teacher into @word
end

Close teacher

deallocate teacher;