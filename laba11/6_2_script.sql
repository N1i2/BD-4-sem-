use UNIVER

declare @id int, @name char(50), @note int;
declare PlusPoint cursor 
for select p.IDSTUDENT, s.NAME, p.NOTE 
from PROGRESS p
inner join STUDENT s 
on s.IDSTUDENT = p.IDSTUDENT
where p.IDSTUDENT = 1005
for update

open PlusPoint
fetch PlusPoint into @id, @name, @note
update PROGRESS set NOTE = NOTE + 1 where current of PlusPoint
print 'Id = ' + rtrim(cast(@id as char)) + '; Name = ' + rtrim(@name) + '; Note = ' + cast(@note as varchar) + ';'
close PlusPoint

deallocate PlusPoint;