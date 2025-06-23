CREATE VIEW CustPrimaryAddress AS
SELECT Customers.FirstName, Customers.LastName,
ShippingInfo.StreetAddress, ShippingInfo.City,
ShippingInfo.State, ShippingInfo.Zipcode
FROM Customers
JOIN ShippingInfo
ON Customers.CustomerId = ShippingInfo.CustID
WHERE ShippingInfo.PrimaryAdd = 'Y'