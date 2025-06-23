CREATE VIEW v_Martinez_CustList AS
SELECT c.CustId, c.FirstName + ' ' + c.LastName 'Customer Name', c.CellPhone
FROM SalesRep sr
JOIN SalesCustomer sc
	ON sr.SalesRepId = sc.SalesRepId
JOIN Customer c
	ON sc.CustomerId = c.CustId
WHERE sr.LastName = 'Martinez'