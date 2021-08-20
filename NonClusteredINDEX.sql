 -- NON CLUSTERED INDEX



 SET STATISTICS IO ON
SET STATISTICS TIME ON

CREATE NONCLUSTERED INDEX sales_082020_INDEX ON sales_082020 (category, seller_id, buyer_id, product_code, brand, currency, price, date)

SELECT * FROM sales_082020 WHERE price=19.00