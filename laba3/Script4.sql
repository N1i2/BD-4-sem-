use laba3

SELECT * From Product;
SELECT Product_name, Price From Product;
SELECT count(*) From Product;

SELECT Quantity From Product where Product_name = 'Beer';
UPDATE Product set Quantity = Quantity+1 where Product_name = 'Beer';
SELECT Quantity From Product where Product_name = 'Beer';
