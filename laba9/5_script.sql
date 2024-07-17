use UNIVER;

Declare @stu int = (Select Count(*) from STUDENT)
Declare @numb int = 87

if @stu = @numb
print cast(@numb as varchar(20));
else if @stu > @numb
print 'more than ' + cast(@numb as varchar(20));
else
print 'less than ' + cast(@numb as varchar(20));