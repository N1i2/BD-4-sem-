use NikolaSales

SELECT Progect.Name, Custom.Date
FROM   Progect INNER JOIN
             Custom ON Progect.Name = Custom.Product_Name
WHERE (Custom.Date > CONVERT(DATETIME, '2025-06-06 00:00:00', 102))