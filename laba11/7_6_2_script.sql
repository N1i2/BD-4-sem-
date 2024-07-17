use laba3

declare orders cursor 
for select ord.Order_name, ord.Quantity from Orders ord
where ord.Order_number = 2
for update
declare @name char(20), @quantity int;

set nocount on;
open orders
fetch orders into @name, @quantity
update Orders set Quantity -= 300 where current of orders
close orders

deallocate orders