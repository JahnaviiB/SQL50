# Write your MySQL query statement below
select
d1.name as Department,
e1.name as Employee,
e1.salary as Salary
from Employee e1
join Department d1 on e1.DepartmentId = d1.Id
where 3 > (select count(distinct (e2.Salary))
from Employee e2
where e2.Salary > e1.Salary
and e1.DepartmentId = e2.DepartmentId)