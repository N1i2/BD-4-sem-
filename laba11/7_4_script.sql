use laba3

declare orders cursor Scroll 
for select ROW_NUMBER() over(order by Order_name) Tindex, Order_name 
from Orders
declare @name char(20), @index int;

open orders
fetch first from orders into @index, @name
print cast(@index as char(1)) + '-1) ' + rtrim(@name);

fetch relative 3 from orders into @index, @name
print cast(@index as char(1)) + '-2) ' + rtrim(@name);

fetch last from orders into @index, @name
print cast(@index as char(1)) + '-3) ' + rtrim(@name);

fetch relative -3 from orders into @index, @name
print cast(@index as char(1)) + '-4) ' + rtrim(@name);

fetch next from orders into @index, @name
print cast(@index as char(1)) + '-5) ' + rtrim(@name);

fetch absolute 2 from orders into @index, @name
print cast(@index as char(1)) + '-6) ' + rtrim(@name);

fetch absolute -2 from orders into @index, @name
print cast(@index as char(1)) + '-7) ' + rtrim(@name);

fetch prior from orders into @index, @name
print cast(@index as char(1)) + '-8) ' + rtrim(@name);
close orders

deallocate orders;