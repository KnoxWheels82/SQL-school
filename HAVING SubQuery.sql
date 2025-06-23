SELECT p.ProductId, SUM(o.Quantity) AS Total_Units,
	AVG(o.Quantity) AS AVERAGE_ORDER
FROM Product p
JOIN OrderItem o
	ON p.ProductId= o.ProductId
GROUP BY p.ProductId
HAVING AVG(o.Quantity) >
	(SELECT AVG(oi.Quantity) FROM OrderItem oi)