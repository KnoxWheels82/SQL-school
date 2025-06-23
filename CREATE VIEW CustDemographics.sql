CREATE VIEW CustDemographics AS
SELECT Customers.FirstName, Customers.LastName,
Demographics.Gender, Demographics.Profession,
Demographics.HouseholdSize, Demographics.HouseholdIncome
FROM Customers
JOIN Demographics
ON Customers.CustomerId = Demographics.CustDemoID