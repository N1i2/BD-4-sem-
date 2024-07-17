use UNIVER

go
create trigger TEACH_TRAN on TEACHER after insert
as declare @c int = (select COUNT(TEACHER) from TEACHER);
		if(@c > 21)
			begin
				raiserror('Teachers is too many', 11, 1);
				rollback;
			end;
		return;
go
		--reload table if you need

--insert into TEACHER values ('KOL', 'Kol Olk Lko', 'w', 'ECeT')
insert into TEACHER values ('KOLL', 'Kol Olk Lko', 'w', 'ECeT')

select * from TR_AUDIT order by ID
select * from TEACHER