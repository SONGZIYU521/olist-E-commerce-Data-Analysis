SELECT
  p.product_category_name,
  COUNT(*) AS sales_count
FROM olist_order_items_dataset AS oi 
JOIN olist_products_dataset AS p 
   ON oi.product_id = p.product_id
GROUP BY p.product_category_name
ORDER BY sales_count DESC; 