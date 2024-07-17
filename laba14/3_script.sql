use UNIVER

drop function if exists FFACPUL

go
create function FFACPUL(@FACULT varchar(20), @PUL varchar(20))returns table
as return select fa.FACULTY, pu.PULPIT
	from FACULTY fa 
	join PULPIT pu on pu.FACULTY = fa.FACULTY
	where fa.FACULTY= isnull(@FACULT, fa.FACULTY)
	and pu.PULPIT = isnull(@PUL, pu.PULPIT)
go

select * from dbo.FFACPUL(null, null)
select * from dbo.FFACPUL('EAF', null)
select * from dbo.FFACPUL(null, 'OX')
select * from dbo.FFACPUL('TTLP', 'TL')