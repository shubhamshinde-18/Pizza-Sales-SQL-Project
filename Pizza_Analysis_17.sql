-- Find top 3 most ordered pizza types based on revenue
SELECT 
    pizza_types.name,
    SUM(pizzas.price * order_details.quantity) AS reveune
FROM
    pizzas
        JOIN
    order_details ON pizzas.pizza_id = order_details.pizza_id
        JOIN
    pizza_types ON pizza_types.pizza_type_id = pizzas.pizza_type_id
GROUP BY pizza_types.name
ORDER BY reveune DESC
LIMIT 3;