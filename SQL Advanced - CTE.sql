/*CTE*/

--acts like sub query
--stores data in the memory like on the fly
-- doest consume storage like temp table


with cte_employee as 
(
select d.Firstname,d.Lastname, d.Gender, s.Salary,
count(d.Gender) over (partition by gender) as TotalGenderCount,
AVG(s.Salary) over (partition by gender) as AvgSalByGender 
from EmployeeDemographics as d
join EmployeeSalary as s
on d.EmployeeId=s.EmployeeId
where s.Salary > 45000
)
select * from cte_employee /* cannot run this line seperatly*/

/*cannot run the cte seperatly somewhere else, need to run with the whole cte process to get output*/