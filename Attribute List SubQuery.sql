SELECT p.ProductId, p.UnitPrice,
	(SELECT AVG(pr.UnitPrice) FROM Product pr)
		AS Average_Price,
	p.UnitPrice - (SELECT AVG(pr.UnitPrice) FROM Product pr)
		AS Dif_Price
	FROM Product p