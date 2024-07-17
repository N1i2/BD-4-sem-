use UNIVER

go
create trigger TR_TEACHER_DEL1 on TEACHER after delete
		as declare @TEACHER char(10), @TEACHER_NAME varchar(100),
		@GENDER char(1), @PULPIT char(20), @IN varchar(300)
	print 'DELETE 1'
	set @IN = 'Middle trigger'
	insert into TR_AUDIT (STMT, TRNAME, CC) values ('DEL', 'TR_TEACHER_DEL1', @IN)
go

create trigger TR_TEACHER_DEL2 on TEACHER after delete
		as declare @TEACHER char(10), @TEACHER_NAME varchar(100),
		@GENDER char(1), @PULPIT char(20), @IN varchar(300)
	print 'DELETE 2'
	set @IN = 'End trigger'
	insert into TR_AUDIT (STMT, TRNAME, CC) values ('DEL', 'TR_TEACHER_DEL2', @IN)
go

create trigger TR_TEACHER_DEL3 on TEACHER after delete
		as declare @TEACHER char(10), @TEACHER_NAME varchar(100),
		@GENDER char(1), @PULPIT char(20), @IN varchar(300)
	print 'DELETE 3'
	set @IN = 'Start trigger'
	insert into TR_AUDIT (STMT, TRNAME, CC) values ('DEL', 'TR_TEACHER_DEL3', @IN)
go

select t.name, e.type_desc 
from sys.triggers t join  sys.trigger_events e  
on t.object_id = e.object_id  
where OBJECT_NAME(t.parent_id) = 'TEACHER' and e.type_desc = 'DELETE'


exec SP_SETTRIGGERORDER @triggername = 'TR_TEACHER_DEL3', @order = 'First', @stmttype = 'DELETE'
exec SP_SETTRIGGERORDER @triggername = 'TR_TEACHER_DEL2', @order = 'Last',  @stmttype = 'DELETE'

insert into TEACHER values ('BYBY', 'BYbyby BYbyby byBYby', 'm', 'ECeT')
delete from TEACHER where TEACHER = 'BYBY'
select * from TR_AUDIT order by ID
