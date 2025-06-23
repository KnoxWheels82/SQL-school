CREATE VIEW CustDemoStAugustine AS
SELECT Customers.FirstName, Customers.LastName,
Demographics.Gender, Demographics.Profession,
Demographics.HouseholdIncome, Demographics.HouseholdSize,
Demographics.Birthdate, Demographics.ChildUnder18
FROM Customers
JOIN Demographics
ON Customers.CustomerId = Demographics.CustDemoID
WHERE Customers.City = 'Saint Augustine'