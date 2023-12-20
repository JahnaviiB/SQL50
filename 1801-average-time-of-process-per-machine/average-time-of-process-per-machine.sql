# Write your MySQL query statement below
select
i1.machine_id,
round(avg(i2.timestamp-i1.timestamp),3) as processing_time
from Activity i1
join Activity i2 on
i1.machine_id = i2.machine_id and
i1.activity_type = 'start' and
i2.activity_type = 'end'
group by i1.machine_id

