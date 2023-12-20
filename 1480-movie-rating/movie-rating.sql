# Write your MySQL query statement below
(select
name as results
from Users 
Inner join MovieRating using(user_id)
group by user_id
order by count(rating) desc, name
limit 1)

union all

(select 
title as results
from Movies 
Inner join MovieRating using(movie_id)
where MONTH(created_at) = '02' AND YEAR(created_at) = '2020'
GROUP BY title
ORDER BY AVG(rating) DESC, title
LIMIT 1)