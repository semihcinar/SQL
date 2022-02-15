-- GEÇÝCÝ DOSYADA KOPYALAMA

SELECT * INTO #product
FROM product.product

SELECT product_id, product_name,brand_id, category_id INTO #product2
FROM product.product