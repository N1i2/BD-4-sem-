use UNIVER

Select *
From(Select Case
When NOTE BETWEEN 1 and 3 Then 'Luser'
When NOTE BETWEEN 4 and 6 Then 'Normes'
When NOTE BETWEEN 7 and 8 Then 'Winer'
else 'Batan'
END[grade_name], count(*)[count_of_grade]
From PROGRESS GROUP by Case
When NOTE BETWEEN 1 and 3 Then 'Luser'
When NOTE BETWEEN 4 and 6 Then 'Normes'
When NOTE BETWEEN 7 and 8 Then 'Winer'
else 'Batan' END) AS a

Order By Case [grade_name] 
When 'Luser' then 1
When 'Normes' then 2
When 'Winer' then 3
else 4
end
