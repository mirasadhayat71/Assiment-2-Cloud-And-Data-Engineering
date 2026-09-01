
-- ============================================================
--  Question 2
--  Show the customer full name (as full_name), order_id,
--  and order_date for all customers who have placed an order.
--  Use sales.customers and sales.orders.
--  Sort by order_date descending.
-- ============================================================

-- Write your query below:
SELECT c.first_name || ' ' || c.last_name AS "Full Name", o.order_id, o.order_date
FROM sales.customers c
INNER JOIN sales.orders o
ON c.customer_id = o.customer_id
ORDER BY o.order_date DESC;
