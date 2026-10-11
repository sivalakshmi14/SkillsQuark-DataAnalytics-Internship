Project: SQL Complex Queries
Topics: JOIN, Subqueries, Aggregate Functions, GROUP BY
  
  1. INNER JOIN: Retrieve customer names and their order details
  
SELECT
Customers.first_name,
Orders.item,
Orders.amount
FROM Customers
INNER JOIN Orders
ON Customers.customer_id = Orders.custoOrder;

  2. SUBQUERY: Find customers who placed orders above 1000
    
SELECT
first_name,
last_name,
ag
FROM Customers
WHERE customer_id IN (
SELECT customer_id
FROM Orders
WHERE amount > 1000
);

  3. AGGREGATE FUNCTIONS: Calculate overall order metrics
    
SELECT
COUNT(*) AS total_orders,
SUM(amount) AS total_sales,
AVG(amount) AS average_order_amount,
MAX(amount) AS highest_order,
MIN(amount) AS lowest_order
FROM Orders;

  4. GROUP BY: Analyze sales for each product
    
SELECT
item,
COUNT(*) AS number_of_orders,
SUM(amount) AS total_sales,
AVG(amount) AS average_sales
FROM Orders
GROUP BY item
ORDER BY total_sales DESC;

  5. JOIN WITH AGGREGATE FUNCTIONS: Calculate spending per customer
    
SELECT
Customers.first_name,
COUNT(Orders.order_id) AS total_orders,
SUM(Orders.amount) AS total_spent
FROM Customers
INNER JOIN Orders
ON Customers.customer_id = Orders.customer_id
GROUP BY
Customers.customer_id,
Customers.first_name
ORDER BY total_spent DESC;
