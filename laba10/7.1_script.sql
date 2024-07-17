Use laba3

exec sp_helpindex 'Orders'
exec sp_helpindex 'Product'
exec sp_helpindex 'Customer'

drop table if exists #leson1
create table #leson1(name nvarchar(20), check_number nvarchar(20))

checkpoint;
DBCC DROPCLEANBUFFERS;

insert into #leson1 
select Company_name, Checking_account
From Customer
Where Len(Company_name) = 4

select * from #leson1

Create index l1 on #leson1(name)