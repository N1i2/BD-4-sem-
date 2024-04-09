use laba3

Select Orders.Order_name,
max(Orders.Selling_price)[Max_price],
min(Orders.Selling_price)[Min_price],
avg(Orders.Selling_price)[Average_price],
count(Orders.Selling_price)[Count_of_price],
sum(Orders.Selling_price)[Summa]
From Orders inner join Product
On Orders.Order_name = Product.Product_name
Group by Order_name