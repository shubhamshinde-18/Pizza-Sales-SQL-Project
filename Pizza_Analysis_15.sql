-- categories wise ditribution of pizzas
select pizza_types.category , count(pizza_types.name) as pizza_count from pizza_types
group by pizza_types.category;