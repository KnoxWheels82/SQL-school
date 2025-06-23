SELECT *
FROM Product p
WHERE p.UnitPrice >=
(SELECT AVG(d.UnitPrice) FROM Product d)