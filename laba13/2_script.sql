use UNIVER

go
ALTER PROC PSUBJECT
    @p VARCHAR(20),
    @c INT = null OUTPUT 
AS
BEGIN
    SELECT * FROM SUBJECT WHERE PULPIT = @p;
    SET @c = @@ROWCOUNT;

    DECLARE @countAll INT;
    SELECT @countAll = COUNT(*) FROM SUBJECT;
    
	RETURN @countAll;
END;
go

declare @countSu int = 0
declare @parm int = 0
exec @countSu = PSUBJECT @p = 'ECeT', @c = @parm output
print 'Count of ECeT: ' + rtrim(cast(@parm as char))
print 'All count: ' + rtrim(cast(@countSu as char))

--drop proc PSUBJECT;