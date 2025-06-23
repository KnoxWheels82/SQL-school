SELECT c.CustId,
COUNT(o.OrderId) '# of Orders',
FORMAT(SUM(o.TotalAmount), 'C') 'TotalAmount',
FORMAT(AVG(i.UnitPrice), 'C') 'Average Price',
FORMAT(MIN(i.UnitPrice), 'N') 'Lowest Priced Item',
FORMAT (MAX(i.UnitPrice), 'C') 'Highest Priced Item',
SUM(i.Quantity) 'Total Items Purchased'
FROM Customer c
JOIN CustomerOrder o
ON c.CustId = o.CustomerId
JOIN OrderItem i
ON o.OrderId = i.OrderId
GROUP BY c.CustId
ORDER BY [Total Items Purchased] DESC