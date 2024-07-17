use laba3

set nocount on;

go
ALTER PROC PPRODUCT
    @p int
AS
BEGIN
    SELECT * FROM Product WHERE Price <= @p;
    
	RETURN;
END;
go

create table #Prod (Product_name nvarchar(50), Price real, Quantity int, Spoils char(1))

insert #Prod exec PPRODUCT @p = 10

select * from #Prod

drop table #Prod