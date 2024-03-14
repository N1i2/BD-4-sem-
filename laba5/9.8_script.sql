use laba3

Select Product_name
From Product
Where Price >= any (Select Price From Product
Where Product_name like '%i%')