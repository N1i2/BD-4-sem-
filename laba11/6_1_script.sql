use UNIVER

declare ClearStud cursor 
for select p.IDSTUDENT, s.NAME, p.NOTE from PROGRESS p 
inner join STUDENT s
On p.IDSTUDENT = s.IDSTUDENT 
where p.NOTE <= 4
For update;
declare @id int, @name char(50), @note int, @index int = 1;

set nocount on;
open ClearStud
fetch ClearStud into @id, @name, @note

print 'Expelled:';
while @@FETCH_STATUS = 0
begin
	print cast(@index as char(3)) + ') ID = '+cast(@id as char(4)) + '; Name = ' + @name + '; Note = ' + rtrim(cast(@note as char(2))) + ';'
	delete PROGRESS where current of ClearStud;
	set @index += 1;
	fetch ClearStud into @id, @name, @note
end

close ClearStud
print 'We delete ' + rtrim(cast((@index-1) as char(3))) + ' students'
deallocate ClearStud;