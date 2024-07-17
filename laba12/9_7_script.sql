use laba3;
--AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
set transaction isolation level SERIALIZABLE 
begin transaction 
	delete Orders where Order_number = 3
    insert Orders values (9,'Beer', 1, 1000, '2025-07-17', 'Byby')
    update Orders set Order_number = 10 where Order_number = 9
    select Order_name from Orders where Order_number = 10
--t1
	select Order_name from Orders where Order_number = 10
--t2
commit 	

--BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
begin transaction 	  
	delete Orders where Order_number = 3
    insert Orders values (9,'Beer', 1, 1000, '2025-07-17', 'Byby')
    update Orders set Order_number = 11 where Order_number = 10
    select Order_name from Orders where Order_number = 11
--t1
commit

	select Order_name from Orders where Order_number = 11
--t2