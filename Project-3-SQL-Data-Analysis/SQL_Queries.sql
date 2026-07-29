-- Display all records
SELECT * FROM ecommerce_orders;

-- Filter orders paid using Credit Card
SELECT *
FROM ecommerce_orders
WHERE PaymentMethod = 'Credit Card';

-- Display top 10 highest-value orders
SELECT *
FROM ecommerce_orders
ORDER BY TotalPrice DESC
LIMIT 10;

-- Count orders by payment method
SELECT PaymentMethod, COUNT(*) AS TotalOrders
FROM ecommerce_orders
GROUP BY PaymentMethod;

-- Calculate total revenue
SELECT SUM(TotalPrice) AS TotalRevenue
FROM ecommerce_orders;

-- Calculate average order value
SELECT AVG(TotalPrice) AS AverageOrderValue
FROM ecommerce_orders;