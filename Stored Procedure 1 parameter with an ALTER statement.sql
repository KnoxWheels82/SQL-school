ALTER PROCEDURE [dbo].[uspProductQtyOnHandSorted](@min_QtyOnHand as INT)
AS
BEGIN
SELECT Product.ProductName, Product.Package,
	Product.ProductID, Product.QtyOnHand
FROM Product
WHERE Product.QtyOnHand < @min_QtyOnHand
ORDER BY Product.QtyOnHand
END
GO

EXEC uspProductQtyOnHandSorted @min_QtyOnHand = 15