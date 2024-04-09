use laba3

Select *
From(Select case 
When Quantity between 0 and 100 then 'not_much'
When Quantity between 101 and 500 then 'average'
else 'a lot'
end[quantity], COUNT(*)[count_of_quantity]
From Orders Group by Case
When Quantity between 0 and 100 then 'not_much'
When Quantity between 101 and 500 then 'average'
else 'a lot' end) as a

Order by Case [quantity]
When 'not_much' then 1
When 'average' then 2
else 3
end
