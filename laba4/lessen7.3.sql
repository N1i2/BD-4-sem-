use laba3

Select Product.Product_name, Orders.Customer, 
Case 
when Product.Quantity<80 then 'little left'
when Product.Quantity>80 then 'theres a lot left'
else 'exactly 80'
end[Quantity]
From Orders inner join Product
On Product.Product_name = Orders.Order_name