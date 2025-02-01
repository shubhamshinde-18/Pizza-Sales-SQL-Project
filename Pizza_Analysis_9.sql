-- Q2. total revenue generated through pizza sales
use pizzahouse;
-- select sum(price) as total_revenue from pizzas;
SELECT 
    ROUND(SUM(order_details.quantity * pizzas.price),
            2) AS total_revenue
FROM
    order_details
        JOIN
    pizzas ON pizzas.pizza_id = order_details.pizza_id;