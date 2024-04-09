use UNIVER;

Alter View [Auditor](auditory_name, auditory_type)
as select AUDITORIUM, AUDITORIUM_TYPE
From AUDITORIUM
Where AUDITORIUM_TYPE like 'LK%' 
WITH CHECK OPTION;

Insert Auditor Values('253-5', 'LB-K');

Select * from Auditor