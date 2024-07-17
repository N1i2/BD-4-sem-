use UNIVER

drop table if exists TR_AUDIT
drop trigger if exists TEACH_TRAN
drop trigger if exists TR_TEACHER_DEL
drop trigger if exists TR_TEACHER_DEL1
drop trigger if exists TR_TEACHER_DEL2
drop trigger if exists TR_TEACHER_DEL3
drop trigger if exists TR_TEACHER_INS
drop trigger if exists TR_TEACHER
drop trigger if exists TR_TEACHER_UPD
drop trigger if exists TR_TEACHER_UPD
drop trigger if exists TR_TEACHER_DDL on database

create table TR_AUDIT
(
	ID int identity(1, 1),
	STMT varchar(20) check (STMT in ('INS', 'DEL', 'UPD')),
	TRNAME varchar(50),
	CC varchar(300)
)

go
create trigger TR_TEACHER_INS on TEACHER after insert
as declare @TEACHER char(10), @TEACHER_NAME varchar(100),
		   @GENDER char(1), @PULPIT char(20), @IN varchar(300)
	print 'INSERT'
	set @TEACHER = (select TEACHER from INSERTED)
	set @TEACHER_NAME = (select TEACHER_NAME from INSERTED)
	set @GENDER = (select GENDER from INSERTED)
	set @PULPIT = (select PULPIT from INSERTED)
	set @IN = ltrim(rtrim(@TEACHER)) + ', ' + ltrim(rtrim(@TEACHER_NAME)) + 
		  ', ' + ltrim(rtrim(@GENDER)) + ', ' + ltrim(rtrim(@PULPIT))
	insert into TR_AUDIT (STMT, TRNAME, CC) values ('INS', 'TR_TEACHER_INS', @IN)
return;
go

insert into TEACHER values ('HWP', 'Hello World Petrovich', 'm', 'TL')
select * from TR_AUDIT order by ID