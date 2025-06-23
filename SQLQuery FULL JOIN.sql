SELECT *
FROM Product;
SELECT *
FROM Supplier
FULL JOIN Product
ON Supplier.SupplierId = Product.SupplierId