DECLARE @myCh char = 'h',
		@myVCh varchar = 'i';

Declare @myDate date,
@myDateTime datetime;
--go
set @myDate = '2020-05-05';

Declare @myInt int,
		@mySmall smallint,
		@myTiny tinyint,
		@myNum numeric(12, 5);

set @myDate = '2020-05-05';
set @myDateTime = getdate();

Select @myInt = 5,
	@MySmall = 2,
	@myTiny=50,
	@myNum = 100;

Select @myCh 'Char', 
@myVCh 'VarChar',
@myDate 'Date',
@myDateTime 'DateTime';

print 'Int = ' +cast(@myInt as varchar(10));
print 'Small Int = ' +cast(@mySmall as varchar(10));
print 'Tiny Int = ' +cast(@myTiny as varchar(10));
print 'Numeric = ' +cast(@myNum as varchar(10));