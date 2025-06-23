SELECT DAY(OrderDate) 'Day', 
COUNT(*) 'Total'
FROM CustomerOrder
GROUP BY DAY(orderdate)
ORDER BY [Day] DESC