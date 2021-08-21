--Left JOIN


SELECT
    product_name,
    count(distinct order_id) aa
	FROM
    production.products p
left JOIN sales.order_items o ON o.product_id = p.product_id
group by
product_name
ORDER BY
    aa;