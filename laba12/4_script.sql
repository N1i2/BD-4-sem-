use UNIVER

set transaction isolation level READ UNCOMMITTED
--AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA

begin tran 
select @@SPID as 'Spid Number', 'RESULT = ' as 'Insert',
* From PROGRESS where IDSTUDENT = 1065
--t1

select @@SPID as 'Spid Number','RESULT = ' as 'Update',
* From PROGRESS where IDSTUDENT = 1065
commit 
--t2
--BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB

begin tran 
insert PROGRESS values('KG', 1015, '2012-12-12', 7);
update PROGRESS set IDSTUDENT = 1065 where IDSTUDENT = 1015
--t1
--t2
rollback 
