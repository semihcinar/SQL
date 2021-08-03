
--UNION

SELECT	last_name
FROM	sales.customers
WHERE	city = 'Sacramento'

UNION

SELECT	last_name
FROM	sales.customers
WHERE	city = 'Monroe'