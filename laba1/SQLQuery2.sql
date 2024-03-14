use NikolaSales

SELECT Progect.Name, Custom.Get_Price
FROM   Progect INNER JOIN
             Custom ON Progect.Name = Custom.Product_Name INNER JOIN
             Customer ON Custom.Customer = Customer.Firm_Namer
WHERE (Custom.Get_Price > 200 AND Custom.Get_Price < 300)