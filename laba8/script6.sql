Drop View Facult

Create View [Facult] With SchemaBinding
as select FACULTY.FACULTY_NAME,
COUNT(*)[All_Count]
From dbo.FACULTY inner join dbo.PULPIT
On PULPIT.FACULTY = FACULTY.FACULTY
Group by FACULTY.FACULTY_NAME

Select * From Facult