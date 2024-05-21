/*ALAIS*/

--select Firstname as Fname
--from EmployeeDemographics

--or 

--select Firstname Fname
--from EmployeeDemographics

--both the above statements are the same

select Firstname + ' ' + Lastname as Fullname
from EmployeeDemographics

select AVG(Age) as AvgAge
from EmployeeDemographics

select d.EmployeeId, s.EmployeeId
from EmployeeDemographics as D
join EmployeeSalary as s
on d.EmployeeId = s.EmployeeId

select d.EmployeeId, d.Firstname, s.Jobtitle, w.Age
from EmployeeDemographics as D
left join EmployeeSalary as s
on d.EmployeeId = s.EmployeeId
left join WareHouseEmployeeDemographics as w
on d.EmployeeId = w.EmployeeID