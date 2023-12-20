#Write your MySQL query statement belows
select
class
from Courses
group by class
having count(class) >= 5