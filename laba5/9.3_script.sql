use laba3

Select Product.Product_name
From Product inner join Orders
On Order_name = Product_name inner join Customer
On Customer.Company_name = Orders.Customer
Where Customer.Company_address like '%2%'