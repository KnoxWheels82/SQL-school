SELECT c.FirstName + ' ' + c.LastName 'Name',
	c.City, c.Country
FROM Customer c
INTERSECT
SELECT srp.FirstName + ' ' + srp.LastName 'Name',
	srp.City, srp.Country
FROM SalesRep srp