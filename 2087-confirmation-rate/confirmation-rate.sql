# Write your MySQL query statement below
select
i.user_id,
round(avg(if(j.action = 'confirmed',1,0)),2) as confirmation_rate 
from
Signups i left join Confirmations j using(user_id)
group by i.user_id