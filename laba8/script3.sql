use UNIVER

Drop view Auditor;

Create view Auditor(auditory_name, auditory_type)
as select au.AUDITORIUM,
au.AUDITORIUM_TYPE
From AUDITORIUM au
Where au.AUDITORIUM_TYPE like 'LK%'

Insert Auditor Values('252-5', 'LB-K');

Select * From Auditor