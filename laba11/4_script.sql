use UNIVER

declare teacher cursor SCROLL
for Select ROW_NUMBER() over(Order by GENDER) Tindex, TEACHER_NAME 
from Teacher where GENDER like 'm'

declare @word char(100), @index int;

open teacher;

fetch last from teacher into @index, @word
print cast(@index as char(2)) + ') ' + @word + ' (1 - last)';

fetch first from teacher into @index, @word
print cast(@index as char(2)) + ') ' + @word + ' (2 - first)';

fetch relative 5 from teacher into @index, @word
print cast(@index as char(2)) + ') ' + @word + ' (3 - relative 5)';

fetch next from teacher into @index, @word
print cast(@index as char(2)) + ') ' + @word + ' (4 - next)';

fetch absolute -2 from teacher into @index, @word
print cast(@index as char(2)) + ') ' + @word + ' (5 - absolute -2)';

fetch relative -2 from teacher into @index, @word
print cast(@index as char(2)) + ') ' + @word + ' (6 - relative -2)';

fetch absolute 10 from teacher into @index, @word
print cast(@index as char(2)) + ') ' + @word + ' (7 - absolute 10)';

fetch prior from teacher into @index, @word
print cast(@index as char(2)) + ') ' + @word + ' (8 - prior)';

--fetch last from teacher into @index, @word;
--print cast(@index as char(2)) + ') ' + @word;
--fetch next from teacher into @index, @word;
--print cast(@index as char(2)) + ') ' + @word;

close teacher;

deallocate teacher;