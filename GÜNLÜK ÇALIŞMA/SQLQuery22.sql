SELECT A.product_name, A.list_price, b.brand_name, c.category_name
  FROM product.product A
  INNER JOIN product.brand B ON a.brand_id = b.brand_id 
  INNER JOIN product.category c on c.category_id = a.category_id


  drop database SampleRetail