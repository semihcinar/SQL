SELECT        state, COUNT(state) AS Expr1
FROM            [us-500]
GROUP BY state
ORDER BY Expr1 DESC