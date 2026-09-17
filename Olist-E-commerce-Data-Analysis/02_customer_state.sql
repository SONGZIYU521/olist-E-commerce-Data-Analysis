SELECT
   customer_state,
   COUNT(*) AS customer_count
FROM olist_customers_dataset
GROUP BY customer_state
ORDER BY customer_count DESC
