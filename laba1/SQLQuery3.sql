use NikolaSales

SELECT Customer.Firm_Namer, Custom.Product_Name
FROM   Custom INNER JOIN
             Customer ON Custom.Customer = Customer.Firm_Namer INNER JOIN
             Progect ON Custom.Product_Name = Progect.Name
WHERE (Custom.Product_Name = N'Картошка')