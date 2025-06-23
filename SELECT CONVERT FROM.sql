SELECT OrderDate FROM CustomerOrder
SELECT CONVERT(nvarchar, OrderDate, 101) 'Change Display Date'
FROM CustomerOrder