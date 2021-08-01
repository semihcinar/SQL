-- INTERSECT 2

-- Write a query that returns brands that have products for both 2016 and 2017.



SELECT	brand_id 
FROM	production.products
WHERE	model_year= 2016

INTERSECT

SELECT	brand_id
FROM	production.products
WHERE	model_year= 2017
ORDER BY brand_id DESC



---------------

SELECT *
FROM	production.brands
WHERE	brand_id IN (
					SELECT	brand_id 
					FROM	production.products
					WHERE	model_year= 2016

					INTERSECT

					SELECT	brand_id
					FROM	production.products
					WHERE	model_year= 2017
					) 