CREATE PROCEDURE uspCUSTID_TotAmt
AS
BEGIN
SELECT Customer.FirstName, Customer.LastName, Customer.Country,
	CustomerOrder.TotalAmount, Product.ProductName,
	OrderItem.UnitPrice, OrderItem.Quantity, Product.Package, 
	Supplier.CompanyName, Supplier.Country
FROM Customer 
JOIN CustomerOrder
	ON Customer.CustId = CustomerOrder.CustomerId
JOIN OrderItem
	on CustomerOrder.OrderId = OrderItem.OrderId
JOIN Product
	ON OrderItem.ProductId = Product.ProductId
JOIN Supplier
	ON Supplier.SupplierId = Product.SupplierId
ORDER BY Customer.LastName, Customer.FirstName, Customer.Country,
	Supplier.CompanyName, Supplier.Country
	END
	GO