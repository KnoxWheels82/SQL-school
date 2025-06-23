CREATE PROCEDURE udpCustomerID_SalesRep(@CustomerID AS INT)
AS
BEGIN
	SELECT Customer.FirstName + ' ' + Customer.LastName 'Customer',
	Customer.CellPhone 'Cust Phone',
	Customer.CustId 'Cust ID',
	SalesRep.FirstName + ' ' + SalesRep.LastName 'Sales Rep'
FROM Customer
JOIN SalesCustomer
	ON.Customer.CustId = SalesCustomer.CustomerId
JOIN SalesRep
	ON SalesCustomer.SalesRepId = SalesRep.SalesRepId
WHERE Customer.CustId = @CustomerID

END
GO

EXEC udpCustomerID_SalesRep @CustomerID = 5