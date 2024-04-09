use UNIVER

Select top(1)
(select avg(NOTE) From PROGRESS
Where SUBJECT like '%OAeP%')[OAeP],
(select avg(NOTE) From PROGRESS
Where SUBJECT like '%BD%')[BD],
(select avg(NOTE) From PROGRESS
Where SUBJECT like '%CUBD%')[CUBD]
From PROGRESS