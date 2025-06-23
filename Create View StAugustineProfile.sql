CREATE VIEW StAugustineProfile AS
SELECT FirstName, LastName, Email
FROM Customers
WHERE City = 'Saint Augustine'