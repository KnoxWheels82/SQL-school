CREATE VIEW v_Product_Master
WITH SCHEMABINDING
AS
SELECT ProductId, ProductName, Package,
UnitPrice, QtyOnHand, CompanyName
FROM dbo.Product p
INNER JOIN dbo.Supplier s
ON P.SupplierId = S.SupplierId