use laba3

--AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
set transaction isolation level READ UNCOMMITTED
begin tran
--t1
select @@SPID as 'Spid Number', 'RESULT = ' as 'Insert',
* From Orders where Order_name like 'Milk'
select @@SPID as 'Spid Number','RESULT = ' as 'Update',
* From Orders where Order_name like 'Milk'
--t2
commit 

--BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
set transaction isolation level READ COMMITTED
begin tran
insert Orders values(6,'Beer', 12, 120, '2025-07-17', 'Byby');
update Orders set Order_name = 'Milk' where Order_number = 6
--t1
--t2
rollback
