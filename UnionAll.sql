
-- Union All

SELECT	city, 'STATE' AS STATE
FROM	sales.stores

UNION ALL

SELECT	state, 'BALDWIN' as city
FROM	sales.stores

----------

SELECT	city, 'STATE' AS STATE
FROM	sales.stores

UNION ALL

SELECT	state, 1 as city
FROM	sales.stores
