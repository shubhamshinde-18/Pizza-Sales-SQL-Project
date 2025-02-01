-- Analyze commulative revenue generated over time (increasing the everyday)

select order_date, sum(total_revenue) over(order by order_date) as cummilative_revenue from 
(select orders.order_date , sum(order_details.quantity * pizzas.price) as total_revenue 
from order_details join pizzas on order_details.pizza_id = pizzas.pizza_id join orders on orders.order_id = order_details.order_id
group by orders.order_date) as Everyday_Sales;