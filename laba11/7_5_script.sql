use laba3

set nocount on;

declare orders cursor 
for select ord.Order_name, ord.Selling_price, cu.Company_address
from Orders ord inner join Customer cu
On ord.Customer = cu.Company_name
For update
declare @name char(10), @price int, @address char(30);

open orders
fetch orders into @name, @price, @address
delete Orders where current of orders
print 'Product = ' + rtrim(@name) + '; Price = ' + rtrim(cast(@price as char(4))) + '; adress' + rtrim(@address) + ';'

fetch orders into @name, @price, @address
update Orders set Selling_price += 10 where current of orders
print 'Product = ' + rtrim(@name) + '; Price = ' + rtrim(cast(@price as char(4))) + '; adress' + rtrim(@address) + ';'
close orders

deallocate orders