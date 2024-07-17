use UNIVER

--AAAAAAAAAAAAAAAAAAAAAAAAAAa
set transaction isolation level REPEATABLE READ;

begin transaction
select AUDITORIUM_CAPACITY From AUDITORIUM where AUDITORIUM = '206-2'
--t1
select case
	when AUDITORIUM_CAPACITY = 50 then 'hello'
	else 'not hello' 
end 'Result', AUDITORIUM from AUDITORIUM where AUDITORIUM = '206-2'
--t2
select case
	when AUDITORIUM_CAPACITY = 50 then 'hello'
	else 'not hello' 
end 'Result', AUDITORIUM from AUDITORIUM where AUDITORIUM = '206-2'
commit

--BBBBBBBBBBBBBBBBBBBBBBBBBBB
begin transaction 
-------------------------- t1 --------------------
insert AUDITORIUM values ('206-2', 'LK-K', 50, '206-2');
commit
-------------------------- t2 --------------------