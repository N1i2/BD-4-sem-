use UNIVER;

Declare @total int = (select sum(AUDITORIUM.AUDITORIUM_CAPACITY) from AUDITORIUM);
--Declare @total int = 50;

Declare @count int, 
@avgCapasity real,
@countSmall int,
@percent numeric(12, 5); 

IF @total > 200
begin
Set @count = (Select COUNT(*) from AUDITORIUM);
Set @avgCapasity = (Select avg(AUDITORIUM.AUDITORIUM_CAPACITY) From AUDITORIUM);
Set @countSmall = (Select COUNT(*) From AUDITORIUM Where AUDITORIUM.AUDITORIUM_CAPACITY < @avgCapasity);
Set @percent = cast(@countSmall as real)/cast(@count as real);

print 'Count of auditory = '+cast(@count as varchar(10));
print 'Average capasity = '+cast(@avgCapasity as varchar(10));
print 'Count of small auditory = '+cast(@countSmall  as varchar(10));
print 'Percentage of small auditory = '+cast(@percent as varchar(10));
end

Else
print 'Total capasity = ' + cast(@total as varchar(10));