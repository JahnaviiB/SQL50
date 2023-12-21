# Write your MySQL query statement below
select
visited_on,
amount,
round(amount/7,2) average_amount
from(
    select distinct visited_on,
    sum(amount) over(order by visited_on range between INTERVAL 6 DAY PRECEDING AND CURRENT ROW) amount,
    min(visited_on) over() firstdate
    from Customer
) t
where visited_on >= firstdate+6