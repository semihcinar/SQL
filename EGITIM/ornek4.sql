create view product as


SELECT       product.product.category_id, product.product.model_year, product.product.list_price, product.brand.brand_name, product.category.category_name, product.product.product_name, 
                         product.category.category_id AS Expr1
FROM            product.product INNER JOIN
                         product.brand ON product.product.brand_id = product.brand.brand_id INNER JOIN
                         product.category ON product.product.category_id = product.category.category_id
WHERE        (product.category.category_id = 4)


select * from customer


CREATE VIEW customer asSELECT        product.product.category_id, product.product.model_year, product.product.list_price, product.brand.brand_name, product.category.category_name, product.product.product_name, 
                         product.category.category_id AS Expr1
FROM            product.product INNER JOIN
                         product.brand ON product.product.brand_id = product.brand.brand_id INNER JOIN
                         product.category ON product.product.category_id = product.category.category_id
WHERE        (product.product.product_name = 'Samsung Galaxy Tab S3 Keyboard Cover')



​
​
​
​
--monthwise turnover analysis
​
SELECT * 
FROM
(
SELECT YEAR(order_date) order_year, MONTH(B.order_date) Order_Month, list_price
FROM sale.store A, sale.orders B, sale.order_item C
WHERE A.store_name = 'The BFLO Store'
AND A.store_id=B.store_id
AND	B.order_id = C.order_id
) A
PIVOT
(
SUM(list_price)
FOR order_month
IN ([1],[2],[3],[4],[5],[6],[7],[8],[9],[10],[11],[12])
) as piv
order by order_year
​
​
--daywise turnover analysis
​
​
​
SELECT * 
FROM
(
SELECT Datename(DW , order_date) order_day, datepart(WK, B.order_date) order_week, list_price
FROM sale.store A, sale.orders B, sale.order_item C
WHERE A.store_name = 'The BFLO Store'
AND A.store_id=B.store_id
AND	B.order_id = C.order_id
) A
PIVOT
(
SUM(list_price)
FOR order_day
IN ([Sunday],[Monday],[Tuesday],[Wednesday],[Thursday],[Friday],[Saturday])
) as piv
order by order_week


	SELECT        product.product.product_name, product.brand.brand_name
	FROM            product.product INNER JOIN
							 product.brand ON product.product.brand_id = product.brand.brand_id
	WHERE        (product.brand.brand_id = 31)


UNION

	SELECT        product.product.product_name, product.brand.brand_name
	FROM            product.product INNER JOIN
							 product.brand ON product.product.brand_id = product.brand.brand_id
	WHERE        (product.brand.brand_id = 35)




	SELECT      count (product.product.product_name)  
FROM            product.product INNER JOIN
                         product.brand ON product.product.brand_id = product.brand.brand_id
WHERE        (product.brand.brand_id = 31)


	SELECT      count (product.product.product_name)  
FROM            product.product INNER JOIN
                         product.brand ON product.product.brand_id = product.brand.brand_id
WHERE        (product.brand.brand_id = 35)


select * from product.product where brand_id ='31'
UNION
select * from product.product where brand_id ='35'


select * from product.brand
where brand_id IN (

						select brand_id from product.product
						where model_year ='2018'
				INTERSECT
						select brand_id from product.product
						where model_year ='2019'
)


select * from 
