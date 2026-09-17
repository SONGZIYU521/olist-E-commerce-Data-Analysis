SELECT LEFT(order_purchase_timestamp , 7) AS order_month,COUNT(*) AS order_count
FROM olist_orders_dataset
GROUP BY order_month
ORDER BY order_month;
