use UNIVER

drop trigger if exists TR_TEACHER_INSTEAD_OF

go
create trigger TR_TEACHER_INSTEAD_OF on TEACHER instead of delete
as raiserror('error delete', 10, 1)
return
go

set nocount on
delete from TEACHER where TEACHER = 'HHH'
select * from TR_AUDIT order by ID