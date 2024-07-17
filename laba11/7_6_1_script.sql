use laba3

declare orders cursor 
for select ord.Order_name, ord.Quantity from Orders ord
where ord.Quantity <= 100
for update;
declare @name char(20), @quantity int, @index int = 0;

set nocount on;
open orders
fetch orders into @name, @quantity

while @@FETCH_STATUS = 0
begin
set @index += 1;
print cast(@index as char(1)) + ') Product = ' + rtrim(@name) + '; Quantity = ' + rtrim(cast(@quantity as char)) + ';'
delete Orders where current of orders;
fetch orders into @name, @quantity
end
close orders

print 'Delete ' + rtrim(cast(@index as char)) + ' products'

deallocate orders