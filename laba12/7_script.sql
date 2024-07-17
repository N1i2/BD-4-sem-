use UNIVER;
-- AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
set transaction isolation level SERIALIZABLE 
begin transaction 
	delete AUDITORIUM where AUDITORIUM = '123-4'
    insert AUDITORIUM values ('123-4', 'LK-K', 10, '123-4')
    update AUDITORIUM set AUDITORIUM_NAME = '123-4' where AUDITORIUM = '123-4'
    select AUDITORIUM from AUDITORIUM where AUDITORIUM = '123-4'
--t1 
	select AUDITORIUM from AUDITORIUM where AUDITORIUM = '123-4'
--t2 
commit 	

--- BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB 
begin transaction 	  
	delete AUDITORIUM where AUDITORIUM_NAME = '123-4'; 
    insert AUDITORIUM values ('123-4', 'LK-K', 10, '123-4')
    update AUDITORIUM set AUDITORIUM_NAME = '123-4' where AUDITORIUM = '123-4'
    select AUDITORIUM from AUDITORIUM  where AUDITORIUM = '123-4'
-- t1 
commit

select AUDITORIUM from AUDITORIUM  where AUDITORIUM = '123-4'
--t2 