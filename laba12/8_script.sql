use UNIVER;

begin tran
	insert AUDITORIUM_TYPE values ('hello', 'Class Where Hello')
	begin tran
		update AUDITORIUM set AUDITORIUM_TYPE = 'hello' where AUDITORIUM = '206-1'
		commit
if @@TRANCOUNT > 0 rollback

select (select count(*) from AUDITORIUM where AUDITORIUM_TYPE = 'hello') Hello_Auditory,
	   (select count(*) from AUDITORIUM_TYPE where AUDITORIUM_TYPE = 'hello') Hello_Type