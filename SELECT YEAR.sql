SELECT YEAR(OrderDate) 'YEAR', 
COUNT(*) 'Total'
FROM CustomerOrder
GROUP BY YEAR(orderdate)
ORDER BY [YEAR] DESC