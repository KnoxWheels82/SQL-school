SELECT DATENAME(weekday, OrderDate) 'WeekDay',
COUNT (*) 'Total Itmes Ordered'
FROM CustomerOrder
GROUP BY DATENAME (weekday, OrderDate)