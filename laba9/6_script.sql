use UNIVER;

Select case 
	When NOTE Between 0 and 4 then 'Loser'
	When NOTE Between 5 and 7 then 'Normal'
	else 'Batan'
end NOTE, count(*)[Notes]
From PROGRESS pr inner join STUDENT stu 
On pr.IDSTUDENT = stu.IDSTUDENT  inner join GROUPS gr
On gr.IDGROUP = stu.IDGROUP
Where FACULTY like '%IT%'
GROUP BY CASE
	When NOTE Between 0 and 4 then 'Loser'
	When NOTE Between 5 and 7 then 'Normal'
	else 'Batan'
end Order by Notes Desc 