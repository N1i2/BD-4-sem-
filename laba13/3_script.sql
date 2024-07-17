use UNIVER

set nocount on;

go
ALTER PROC PSUBJECT
    @p VARCHAR(20)
AS
BEGIN
    SELECT * FROM SUBJECT WHERE PULPIT = @p;
    
	RETURN;
END;
go

create table #SUBJECT (SUBJECT char(10), SUBJECT_NAME varchar(100), PULPIT char(20))

insert #SUBJECT exec PSUBJECT @p = 'ECeT'

select * from #SUBJECT

drop table #SUBJECT