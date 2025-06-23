SELECT c.CustId Purchashed_Item#_5,
c.LastName Purchased_Item#_10
FROM Customer c JOIN
	(SELECT co.CustomerId
	FROM CustomerOrder co
	JOIN OrderItem oi
	ON co.OrderId = oi.OrderId
	WHERE oi.ProductId = 5) CP1
ON c.CustId = CP1.CustomerId
JOIN
	(SELECT co.CustomerId
	FROM CustomerOrder co
	JOIN OrderItem oi
	ON co.OrderId = oi.OrderId
	WHERE oi.ProductId = 10) CP2
ON CP1.CustomerId = CP2.CustomerId	