use laba3;

set nocount on;

Declare @word char(100), @index int = 1;

Declare orders cursor static local
--Declare orders cursor local
for select Order_name from Orders

open orders
delete Orders where Order_number = 2;

fetch orders into @word
while @@FETCH_STATUS = 0
begin
	print cast(@index as char(2)) + ') ' + rtrim(@word)
	set @index += 1;
	fetch orders into @word;
end
close orders

insert Orders(Order_number, Order_name, Selling_price, Quantity, Date_of_delivery, Customer)
values(2, 'Oranges', 9.9, 400, '2025-11-05', 'Byby')