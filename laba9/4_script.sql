--Declare @x float = 5;
--Declare @t float = 10;

Declare @x float = 10;
Declare @t float = 5;

Declare @z float;

if (@t > @x) Set @z = (SIN(@t)*SIN(@t));
else if (@t < @x) Set @z = (4*(@t+@x));
else Set @z = (1-exp(@x-2))

print '1) Result = ' + cast(@z as varchar(10))

--////////////////////////////////////////////////////////
Declare @fullFio varchar(50) = 'Selicky Nikolay Evgenievich',
@shortFio varchar(50);

Set @shortFio = SUBSTRING(@fullFio, 0, CHARINDEX(' ', @fullFio)+1)+
SUBSTRING(@fullFio, CHARINDEX(' ', @fullFio)+1, 1)+'. '+
SUBSTRING(@fullFio, CHARINDEX(' ', @fullFio, CHARINDEX(' ', @fullFio)+1)+1, 1) + '.';

Print '2) ' + @fullFio + ' == '+ @shortFio;

--////////////////////////////////////////////////////////////
use UNIVER;

Declare @name varchar(100), @bday varchar(50), @age int;

Set @name = (Select Top 1 stu.NAME From STUDENT stu Where MONTH(stu.BDAY) = MONTH(getdate())+1);
Set @bday = (Select Top 1 stu.BDAY From STUDENT stu Where MONTH(stu.BDAY) = MONTH(getdate())+1);
Set @age = datediff(YEAR, @bday, getdate());

print '3) Name = ' + @name + '; Berthday = ' + @bday + '; age = ' + Convert(varchar(50), @age);

--////////////////////////////////////////////////////////////
DECLARE @examDay date = (
SELECT TOP 1 pr.PDATE 
FROM PROGRESS pr JOIN STUDENT stu
ON stu.IDSTUDENT = pr.IDSTUDENT
WHERE pr.SUBJECT = 'BD' AND stu.IDGROUP = 17)

PRINT '4) ' + DATENAME(dw, @examDay);