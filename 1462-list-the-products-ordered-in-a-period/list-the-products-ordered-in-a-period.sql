# Write your MySQL query statement below
select
product_name,
sum(unit) as unit
from Orders
inner join Products using(product_id)
where month(order_date) = '02'
and
year(order_date) = '2020'
group by product_id
having sum(unit) >= 100