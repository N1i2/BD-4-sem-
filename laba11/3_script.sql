use UNIVER;

set nocount on;

Declare @word char(100), @index int = 1;

--Declare teacher cursor static local
Declare teacher cursor local
for select TEACHER_NAME from TEACHER where GENDER like 'm'

open teacher
delete TEACHER where TEACHER_NAME like 'Akunovich Stanislav Ivanovich'

fetch teacher into @word
while @@FETCH_STATUS = 0
begin
	print cast(@index as char(2)) + ') ' + rtrim(@word)
	set @index += 1;
	fetch teacher into @word;
end
close teacher

insert TEACHER(TEACHER, TEACHER_NAME, GENDER, PULPIT) 
values('AKHBC', 'Akunovich Stanislav Ivanovich', 'm', 'ECeT')