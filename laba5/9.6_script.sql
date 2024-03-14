use laba3

select top(1)
(select avg(Price) From Product
Where Product_spoils = '+')[Spoils],
(select avg(Price) From Product
Where Product_spoils = '-')[Not_Spoils]
From Product