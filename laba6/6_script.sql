use UNIVER

Select SUBJECT, 
(Select COUNT(*)
From PROGRESS p2
Where p1.SUBJECT = p2.SUBJECT
and p1.NOTE = p2.NOTE)[count_of_student]
From PROGRESS p1
Group by SUBJECT, IDSTUDENT, NOTE
Having p1.NOTE between 8 and 9