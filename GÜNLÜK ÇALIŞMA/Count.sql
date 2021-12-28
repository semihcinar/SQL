SELECT        TOP (10000) brand, COUNT(brand) AS Expr1
FROM            Data
GROUP BY brand
ORDER BY Expr1 DESC



