/*SUB-QUERIES*/ -- uisng in select, from, & where stattement

select * from EmployeeSalary

-- suquery in select

select EmployeeId, Salary,
	(select AVG(Salary) from EmployeeSalary) as allavgsalary
from EmployeeSalary

--same using partition

select EmployeeId, Salary, AVG(Salary) over () as allavgsalary
from EmployeeSalary

-- why group by doesn't work for the above

select EmployeeId, Salary, AVG(Salary) as allavgsalary
from EmployeeSalary
group by EmployeeId, Salary
order by EmployeeId, Salary

--subquery in from statement

select a.EmployeeId, allavgsalary
from (select EmployeeId, Salary, AVG(Salary) over () as allavgsalary
		from EmployeeSalary) as a

-- subquery in where statement

select EmployeeId,Jobtitle ,Salary
from EmployeeSalary
where employeeid in	(
					select EmployeeId 
					from EmployeeDemographics
					where age>30)
