--AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
use UNIVER;
set transaction isolation level READ COMMITTED 

begin tran
select count(*) from PROGRESS pr where pr.IDSTUDENT = 1017
--t1
select 'Result = ' as 'update', count(*) from PROGRESS pr where pr.IDSTUDENT = 1017
--t2
select 'Result = ' as 'update', count(*) from PROGRESS pr where pr.IDSTUDENT = 1017
commit

--BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB	
use UNIVER
begin tran
--t1
update PROGRESS set IDSTUDENT = 1062 where IDSTUDENT = 1017
commit
--t2