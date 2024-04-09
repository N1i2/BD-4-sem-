Drop View All_Pulpit_Count

Create View [All_Pulpit_Count]
as Select fa.FACULTY[Faculty_Name],
COUNT(pu.PULPIT)[Count_Of_Pulpit]
From PULPIT pu inner join FACULTY fa
On fa.FACULTY = pu.FACULTY
Group By fa.FACULTY

Select * from All_Pulpit_Count