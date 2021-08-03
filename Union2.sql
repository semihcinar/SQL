-- Union 2

SELECT	first_name, last_name
FROM	sales.customers
WHERE	city = 'Sacramento'

UNION

SELECT	first_name, last_name
FROM	sales.customers
WHERE	city = 'Monroe'
