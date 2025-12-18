-- Monthly revenue
SELECT MONTH(order_date) AS month,
SUM(order_amount) AS revenue
FROM orders
GROUP BY MONTH(order_date);

-- Top 5 customers
SELECT customer_id, SUM(order_amount) AS total_spent
FROM orders
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 5;
