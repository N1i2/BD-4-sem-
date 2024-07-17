use laba3;

--AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
set transaction isolation level READ COMMITTED 
begin tran
select count(*) from Orders ord where ord.Order_number = 5
--t1
--t2
select 'Result = ' as 'update', count(*) from Orders ord where ord.Order_number = 5
commit

--BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB	
begin tran
update Orders set Order_number= 7 where Order_number= 5
--t1
commit
--t2