CREATE PROCEDURE uspProductQtyOnHand
AS
BEGIN
SELECT Product.ProductName, Product.Package, Product.ProductID, Product.QTYOnHand
FROM Product
WHERE QtyOnHand < 25
ORDER BY Product.ProductName
END
GO