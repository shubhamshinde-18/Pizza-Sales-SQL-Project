-- Q1. retrive total no of orders placed.
use pizzahouse;
SELECT 
    COUNT(order_id) AS total_no_Orders
FROM
    orders;