-- Q7 determine the distribution of orders by the hour of day
select hour(orders.order_time) as order_hour , count(order_id) as orders from orders 
group by order_hour;