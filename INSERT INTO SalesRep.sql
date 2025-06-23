INSERT INTO SalesRep
SELECT 101, FirstName, LastName, City, Country, Cellphone, 'Sales Representative'
FROM CUSTOMER
WHERE Customer.CustId = 1