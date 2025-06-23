SELECT c.CustId Purchased_Item#_5,
c.LastName Purchashed_Item#_10
FROM Customer c JOIN
				(SELECT co.CustomerId
				FROM CustomerOrder co
				JOIN OrderItem oi
				ON co.OrderId = oi.OrderId
				WHERE oi.ProductId = 5) CP1
			ON C.CustId = CP1.CustomerId
			JOIN
				(SELECT co.CustomerId
				FROM CustomerOrder co
				JOIN OrderItem oi
				ON co.OrderId = oi.OrderId
				WHERE oi.ProductId = 10) CP2
			ON CP1.CustomerId = CP2.CustomerId