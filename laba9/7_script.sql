Drop table #seven

Create table #seven(id1 int, id2 varchar(50), id3 date);

Set nocount on;

Declare @i int = 0;
while @i<10
	begin 
insert #seven(id1, id2, id3)
	values(floor(100*RAND()), replicate('hello',  (5*RAND())), GETDATE())
Set @i = @i+1;
end;

Select * from #seven