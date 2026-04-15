SELECT SUM(payment_value) AS total_revenue FROM sales;

SELECT COUNT(DISTINCT order_id) AS total_orders FROM sales;

SELECT 
    strftime('%Y-%m', order_purchase_timestamp) AS month,
    SUM(payment_value) AS revenue
FROM sales
GROUP BY month
ORDER BY month;

SELECT customer_state, SUM(payment_value) AS revenue
FROM sales
GROUP BY customer_state
ORDER BY revenue DESC;

SELECT product_category_name, SUM(payment_value) AS revenue
FROM sales
GROUP BY product_category_name
ORDER BY revenue DESC;

SELECT AVG(payment_value) AS avg_order_value FROM sales;