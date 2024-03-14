use laba3

Select Product.Product_name
From Product inner join Orders
On Order_name = Product_name
and Customer In(Select Customer.Company_name 
From Customer
Where Customer.Company_address like '%2%') 