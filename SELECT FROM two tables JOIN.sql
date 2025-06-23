SELECT Customers.FirstName, Customers.LastName,
	Demographics.Birthdate
FROM Customers
	JOIN Demographics
ON Customers.CustomerID = Demographics.CustDemoID