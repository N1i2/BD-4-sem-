use UNIVER

declare @teach char(10), @teacherName char(50), @pul char(10);
declare teacher cursor 
for Select TEACHER, TEACHER_NAME, PULPIT from TEACHER
where GENDER like 'm'
For update;

open teacher
fetch teacher into @teach, @teacherName, @pul
delete TEACHER where current of teacher;
print rtrim(@teach)+' == '+rtrim(@teacherName)+' == '+rtrim(@pul);

fetch teacher into @teach, @teacherName, @pul
update TEACHER set TEACHER_NAME = TEACHER_NAME+' Hello' Where Current of teacher
print rtrim(@teach)+' == '+rtrim(@teacherName)+' == '+rtrim(@pul);
close teacher

deallocate teacher