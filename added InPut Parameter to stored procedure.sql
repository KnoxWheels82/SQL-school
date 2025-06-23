ALTER PROCEDURE [dbo].[uspProductQtyOnHand] (@min_QtyOnHand as INT)
AS
BEGIN
SELECT Product.ProductName, Product.Package, Product.ProductID, Product.QTYOnHand
FROM Product
WHERE Product.QtyOnHand < @min_QtyOnHand
ORDER BY Product.QtyOnHand
END
GO

EXEC uspProductQtyOnHand @min_QtyOnHand = 15
