SELECT c.FirstName + ' ' + c.LastName 'Name',
	c.City, c.Country, c.CellPhone 'Phone',
	'Customer' Category
FROM Customer c
UNION
SELECT s.CompanyName, s.City, s.Country,
s.Phone, 'Supplier' Category
FROM Supplier s
ORDER BY 3