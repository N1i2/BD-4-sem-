use laba3

go
ALTER PROC PPRODUCT
    @p int,
    @c INT = null OUTPUT 
AS
BEGIN
    SELECT * FROM Product WHERE Price <= @p;
    SET @c = @@ROWCOUNT;

    DECLARE @countAll INT;
    SELECT @countAll = COUNT(*) FROM Product;
    
	RETURN @countAll;
END;
go

declare @countSu int = 0
declare @parm int = 0
exec @countSu = PPRODUCT @p = 10, @c = @parm output
print 'Count where prise < 10: ' + rtrim(cast(@parm as char))
print 'All count: ' + rtrim(cast(@countSu as char))

--drop proc PSUBJECT;