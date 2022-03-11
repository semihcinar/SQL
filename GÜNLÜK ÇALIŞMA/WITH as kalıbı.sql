

create table table_1 (Visitor_ID int, Adv_Type char(10), Actions char (10))


insert into table_1 (Visitor_ID, Adv_Type, Actions) VALUES 				
				(1,'A', 'Left'),
				(2,'A', 'Order'),
				(3,'B', 'Left'),
				(4,'A', 'Order'),
				(5,'A', 'Review'),
				(6,'A', 'Left'),
				(7,'B', 'Left'),
				(8,'B', 'Order'),
				(9,'B', 'Review'),
				(10,'A', 'Review')



select * from table_1


WITH Actions As
	(
	select * from table_1
	), 
table_2 AS (
			SELECT	Adv_Type, 
					COUNT(*) cnt_action, 
					SUM(CASE WHEN Actions = 'Order' THEN 1 ELSE 0 END) AS cnt_inbox
			FROM Actions
			GROUP BY Adv_Type
)
SELECT * FROM table_2

--------------------------------------------------


WITH Actions As
				(
				select * from table_1
				), 
table_2 AS (
			SELECT	Adv_Type, 
					COUNT(*) cnt_action, 
					SUM(CASE WHEN Actions = 'Order' THEN 1 ELSE 0 END) AS cnt_order
			FROM Actions
			GROUP BY Adv_Type
			)
SELECT	Adv_Type, 
		convert(numeric(5,2), 1.0* cnt_order/cnt_action) AS Conversion_Rate
FROM	Table_2

