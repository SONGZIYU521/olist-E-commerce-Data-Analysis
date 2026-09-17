SELECT
 c.customer_state,
 COUNT(DISTINCT o.order_id) AS total_orders,
 ROUND(SUM(p.payment_value)/COUNT(DISTINCT o.order_id) , 2) AS avg_order_value
FROM olist_orders_dataset o 
JOIN olist_order_payments_dataset p ON o.order_id = p.order_id
JOIN olist_customers_dataset c ON o.customer_id = c.customer_id
GROUP BY c.customer_state
ORDER BY avg_order_value DESC;