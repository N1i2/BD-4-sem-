use UNIVER

drop trigger if exists TR_TEACHER_DDL on database

go
create trigger TR_TEACHER_DDL on database 
	for DDL_DATABASE_LEVEL_EVENTS  as   
	declare @EVENT_TYPE varchar(50) = EVENTDATA().value('(/EVENT_INSTANCE/EventType)[1]', 'varchar(50)')
	declare @OBJ_NAME varchar(50) = EVENTDATA().value('(/EVENT_INSTANCE/ObjectName)[1]', 'varchar(50)')
	declare @OBJ_TYPE varchar(50) = EVENTDATA().value('(/EVENT_INSTANCE/ObjectType)[1]', 'varchar(50)')
	if @OBJ_NAME = 'TEACHER' 
	begin
		print 'Event type: ' + cast(@EVENT_TYPE as varchar)
		print 'Object name: ' + cast(@OBJ_NAME as varchar)
		print 'Object type: ' + cast(@OBJ_TYPE as varchar)
		raiserror('All operation are prohoibited', 16, 1)
		rollback  
	end
	go

alter table TEACHER drop column TEACHER_NAME