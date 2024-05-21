/* patition by*/

/* usually comapared with group by, 
in group by, it actually groups and find aggregate values for each group (reduces no of rows)
in partion by, it creates a partition like a copy (doesnt reduce no of rows)*/

-- used in select statement before from statement
/*SYNTAX
select ____,
over (partition by____) alias
*/

select d.Firstname,d.Lastname,d.Gender,s.Salary,
COUNT(Gender) over (partition by gender) as TotalGender
from EmployeeDemographics as d
inner join EmployeeSalary as s
on d.EmployeeId = s.EmployeeId

--compare with group by

select d.Gender, COUNT(Gender) as TotalGender
from EmployeeDemographics as d
inner join EmployeeSalary as s
on d.EmployeeId = s.EmployeeId
group by d.Gender