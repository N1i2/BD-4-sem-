use laba3

--AAAAAAAAAAAAAAAAAAAAAAAAAAa
set transaction isolation level REPEATABLE READ;
begin transaction
select Order_name From Orders where Order_number = '3'
--t1
--t2
select case
	when Order_number = 3 then 'hello'
	else 'not hello' 
end 'Result', Order_name from Orders where Order_number = '3'
commit

--BBBBBBBBBBBBBBBBBBBBBBBBBBB
begin transaction 
insert Orders values (6,'Beer', 1, 1000, '2025-07-17', 'Byby');
commit
-------------------------- t1 --------------------
-------------------------- t2 --------------------