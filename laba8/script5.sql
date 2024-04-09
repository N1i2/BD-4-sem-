Drop View Discipline;

Create View Discipline(Pulpit, Subject)
as select top 150 SUBJECT.PULPIT,
SUBJECT.SUBJECT
From SUBJECT 
Order By SUBJECT.SUBJECT

Select * From Discipline