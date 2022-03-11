SELECT    * 
FROM        View_1

LEFT JOIN table_1 b ON b.Visitor_ID = a.Visitor_ID

SELECT   Adv_Type, Actions AS Expr1, COUNT(Actions) AS Expr2
FROM            table_1
GROUP BY Adv_Type, Actions
HAVING        (Actions = 'order')



