--/*HAVING*/

--select s.Jobtitle, COUNT(Jobtitle) 
--from EmployeeDemographics as d
--join EmployeeSalary as s
--on d.EmployeeId = s.EmployeeId
--where COUNT(Jobtitle) > 1
--group by s.Jobtitle

----above throws error so, cuz agggregate cannot have "WHERE" clause attached to it. so use "having"

--select s.Jobtitle, COUNT(Jobtitle) 
--from EmployeeDemographics as d
--join EmployeeSalary as s
--on d.EmployeeId = s.EmployeeId
--having COUNT(Jobtitle) > 1
--group by s.Jobtitle

----the above also doesnt work cuz aggreagte happens after group by function, cuz u cant see any agreegation untill the grouping is done.

--select s.Jobtitle, COUNT(Jobtitle) as jobtitlecount
--from EmployeeDemographics as d
--join EmployeeSalary as s
--on d.EmployeeId = s.EmployeeId
--group by s.Jobtitle
--having COUNT(Jobtitle) > 1

-------------------------------

--select s.Jobtitle, AVG(Salary) as AvgSal
--from EmployeeDemographics as d
--join EmployeeSalary as s
--on d.EmployeeId = s.EmployeeId
--group by s.Jobtitle
--order by AvgSal
--having avg(sal) > 45000

---- the above wont work as "Having" would come after group by and before order by

--select s.Jobtitle, AVG(Salary) as AvgSal
--from EmployeeDemographics as d
--join EmployeeSalary as s
--on d.EmployeeId = s.EmployeeId
--group by s.Jobtitle
--having avg(Salary) > 45000
--order by AvgSal

