SELECT
  p.payment_type,
  COUNT(DISTINCT p.order_id) AS order_count,
  ROUND(AVG(p.payment_value), 2) AS avg_order_value
FROM olist_order_payments_dataset p
JOIN olist_orders_dataset o ON p.order_id = o.order_id
GROUP BY p.payment_type
ORDER BY order_count DESC;