SELECT c.Country,
COUNT(c.custid) 'No of Customers',
FORMAT(SUM(o.TotalAmount), 'C', 'en-US') 'Total Amount',
FORMAT(AVG(o.TotalAmount), 'C', 'en-US') 'Average Amount'
FROM Customer c
JOIN CustomerOrder o
ON c.Custid = o.CustomerId
GROUP BY c.Country
ORDER BY c.Country