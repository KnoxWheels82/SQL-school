ALTER PROCEDURE [dbo].[uspCUSTID_TotAmt]
	(@CID as INT,
	@TotAmt as Decimal,@Amount as Decimal OUTPUT,
	@product_count INT OUTPUT)
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
WHERE Customer.CustId = @CID
	AND CustomerOrder.TotalAmount > @TotAmt
ORDER BY Customer.LastName, Customer.FirstName, Customer.Country,
	Supplier.CompanyName, Supplier.Country
	SELECT @product_count = @@ROWCOUNT, @Amount = @TotAmt
	END

	EXEC uspCUSTID_TotAmt
		@CID = 5,
		@TotAmt = 3000